Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 615144633D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 17:48:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0YFDIECuQOFzoxK6jL3MThuzI4NE6TD5oaafKYLGDj0=; b=bq6d4A7hDwxt1b
	3pXcxkaOjXmROMR5erGRNyF/tSLv54tU9JGldPsDRWO7lSDWBjrShjqc3cC0rx8Iyj1h3QApUJ+Hl
	4vAwiJfgTkT70WNn4fnOWh9adZWYORlSwN3fKrkCqspXEuPNhxhOuVn6+13dUk9k0IvK7VrendNON
	DwioE95oRxzeawAqbX5r6EUhIY3FopZ71WZ2E/XxbAYW9Dc0XL/AiOu5b58ItZ453rRjENhYs74Db
	y2/YNXcHIFp59HeSS+qleGGOMvpCePcWE34w1ygn6qa2PD+xVecOC2OCITGGcPP+BhtwyDyBkkkqy
	UxBXoMx4l/oSnwB48BYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hboQm-0007lx-K2; Fri, 14 Jun 2019 15:47:56 +0000
Received: from 179-240-172-117.3g.claro.net.br ([179.240.172.117]
 helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hboQe-0007lY-5g; Fri, 14 Jun 2019 15:47:48 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 37B2741149; Fri, 14 Jun 2019 12:47:44 -0300 (-03)
Date: Fri, 14 Jun 2019 12:47:44 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH v2 1/5] perf pmu: Fix uncore PMU alias list for ARM64
Message-ID: <20190614154744.GH1402@kernel.org>
References: <1560521283-73314-1-git-send-email-john.garry@huawei.com>
 <1560521283-73314-2-git-send-email-john.garry@huawei.com>
 <20190614144656.GF1402@kernel.org>
 <275d1699-23a3-f06b-3fad-750784318cc1@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <275d1699-23a3-f06b-3fad-750784318cc1@huawei.com>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.11.3 (2019-02-01)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, brueckner@linux.ibm.com, mathieu.poirier@linaro.org,
 peterz@infradead.org, ben@decadent.org.uk, tmricht@linux.ibm.com,
 will.deacon@arm.com, Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org, zhangshaokun@hisilicon.com,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, namhyung@kernel.org,
 jolsa@redhat.com, linux-arm-kernel@lists.infradead.org,
 kan.liang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Fri, Jun 14, 2019 at 04:04:26PM +0100, John Garry escreveu:
> On 14/06/2019 15:46, Arnaldo Carvalho de Melo wrote:
> > Em Fri, Jun 14, 2019 at 10:07:59PM +0800, John Garry escreveu:
> > > In commit 292c34c10249 ("perf pmu: Fix core PMU alias list for X86
> > > platform"), we fixed the issue of CPU events being aliased to uncore
> > > events.
> > > 
> > > Fix this same issue for ARM64, since the said commit left the (broken)
> > > behaviour untouched for ARM64.
> > 
> > So I added:
> > 
> > Cc: stable@vger.kernel.org
> > Fixes: 292c34c10249 ("perf pmu: Fix core PMU alias list for X86 platform")
> > 
> > So that the stable trees get this fix and add it to the versions where
> > it should have been together with the x86 fix, ok?
> 
> Hi Arnaldo,
> 
> I have a slight hesitation about this qualifying for the stable.
> 
> It's fixing uncore pmu aliasing for arm64. But this series is also the first
> to introduce any actual arm64 uncore pmu aliases.

I'm not talking about the whole series, just the first patch, the one
you said should've been done together with the equivalent fix for x86.

- Arnaldo
 
> Thanks,
> John
> 
> > 
> > - Arnaldo
> > 
> > > Signed-off-by: John Garry <john.garry@huawei.com>
> > > ---
> > >  tools/perf/util/pmu.c | 28 ++++++++++++----------------
> > >  1 file changed, 12 insertions(+), 16 deletions(-)
> > > 
> > > diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
> > > index f2eff272279b..7e7299fee550 100644
> > > --- a/tools/perf/util/pmu.c
> > > +++ b/tools/perf/util/pmu.c
> > > @@ -709,9 +709,7 @@ static void pmu_add_cpu_aliases(struct list_head *head, struct perf_pmu *pmu)
> > >  {
> > >  	int i;
> > >  	struct pmu_events_map *map;
> > > -	struct pmu_event *pe;
> > >  	const char *name = pmu->name;
> > > -	const char *pname;
> > > 
> > >  	map = perf_pmu__find_map(pmu);
> > >  	if (!map)
> > > @@ -722,28 +720,26 @@ static void pmu_add_cpu_aliases(struct list_head *head, struct perf_pmu *pmu)
> > >  	 */
> > >  	i = 0;
> > >  	while (1) {
> > > +		const char *cpu_name = is_arm_pmu_core(name) ? name : "cpu";
> > > +		struct pmu_event *pe = &map->table[i++];
> > > +		const char *pname = pe->pmu ? pe->pmu : cpu_name;
> > > 
> > > -		pe = &map->table[i++];
> > >  		if (!pe->name) {
> > >  			if (pe->metric_group || pe->metric_name)
> > >  				continue;
> > >  			break;
> > >  		}
> > > 
> > > -		if (!is_arm_pmu_core(name)) {
> > > -			pname = pe->pmu ? pe->pmu : "cpu";
> > > -
> > > -			/*
> > > -			 * uncore alias may be from different PMU
> > > -			 * with common prefix
> > > -			 */
> > > -			if (pmu_is_uncore(name) &&
> > > -			    !strncmp(pname, name, strlen(pname)))
> > > -				goto new_alias;
> > > +		/*
> > > +		 * uncore alias may be from different PMU
> > > +		 * with common prefix
> > > +		 */
> > > +		if (pmu_is_uncore(name) &&
> > > +		    !strncmp(pname, name, strlen(pname)))
> > > +			goto new_alias;
> > > 
> > > -			if (strcmp(pname, name))
> > > -				continue;
> > > -		}
> > > +		if (strcmp(pname, name))
> > > +			continue;
> > > 
> > >  new_alias:
> > >  		pr_err("%s new_alias name=%s pe->name=%s\n", __func__, name, pe->name);
> > > --
> > > 2.17.1
> > 
> 

-- 

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
