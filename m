Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A36A24D863
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 20:26:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rnw43kh3FDsm5XsgIoZgdyWBKeTCyrrQaYiXRSL9l+g=; b=h/jfW0D/dZpAqp
	UySaTNE51dZjRT2OrLh7mcznGIgsEmcsimhQtduLZRbKoTik6Zy20/Kq0zSNFKOgJYU2d3dfAmtf6
	pPVAsIbvQ+s/yKnzagXp686HKBOhvqK+VA6s87kzsiIR+f2G6Sjm5YqqczS/06m6gXlyr5qjJO3uD
	iBkJBYxtaASlhv111UKFu5eQ5ziWwvi+2mFmXb9cnK7EIJpXVtgtIc4aOEOnLZl7cg0X9cKw2Wu0h
	Mzyscn+dFy8twfAFaPF/3f7gVC8YZuvbTC1IGJE6VxYERsLRiWmlestu9ID5tEHxZKXWapZR8mSCt
	XdGtMWoRJf5EHG0tzOLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he1lK-0004XY-96; Thu, 20 Jun 2019 18:26:18 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he1l3-0004Wm-SW
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 18:26:03 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B9913316290E;
 Thu, 20 Jun 2019 18:25:42 +0000 (UTC)
Received: from krava (ovpn-204-72.brq.redhat.com [10.40.204.72])
 by smtp.corp.redhat.com (Postfix) with SMTP id 56BEC19C5B;
 Thu, 20 Jun 2019 18:25:23 +0000 (UTC)
Date: Thu, 20 Jun 2019 20:25:19 +0200
From: Jiri Olsa <jolsa@redhat.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH v2 2/5] perf pmu: Support more complex PMU event aliasing
Message-ID: <20190620182519.GA15239@krava>
References: <1560521283-73314-1-git-send-email-john.garry@huawei.com>
 <1560521283-73314-3-git-send-email-john.garry@huawei.com>
 <20190616095844.GC2500@krava>
 <a27e65b4-b487-9206-6dd0-6f9dcec0f1f5@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a27e65b4-b487-9206-6dd0-6f9dcec0f1f5@huawei.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Thu, 20 Jun 2019 18:25:55 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_112601_968956_D36FEEA3 
X-CRM114-Status: GOOD (  27.59  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 peterz@infradead.org, tmricht@linux.ibm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, acme@kernel.org, linuxarm@huawei.com,
 zhangshaokun@hisilicon.com, alexander.shishkin@linux.intel.com,
 mingo@redhat.com, namhyung@kernel.org, ben@decadent.org.uk,
 linux-arm-kernel@lists.infradead.org, kan.liang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 10:06:08AM +0100, John Garry wrote:
> On 16/06/2019 10:58, Jiri Olsa wrote:
> > On Fri, Jun 14, 2019 at 10:08:00PM +0800, John Garry wrote:
> > > The jevent "Unit" field is used for uncore PMU alias definition.
> > > 
> > > The form uncore_pmu_example_X is supported, where "X" is a wildcard,
> > > to support multiple instances of the same PMU in a system.
> > > 
> > > Unfortunately this format not suitable for all uncore PMUs; take the Hisi
> > > DDRC uncore PMU for example, where the name is in the form
> > > hisi_scclX_ddrcY.
> > > 
> > > For the current jevent parsing, we would be required to hardcode an uncore
> > > alias translation for each possible value of X. This is not scalable.
> > > 
> > > Instead, add support for "Unit" field in the form "hisi_sccl,ddrc", where
> > > we can match by hisi_scclX and ddrcY. Tokens in Unit field are
> > > delimited by ','.
> > > 
> > > Signed-off-by: John Garry <john.garry@huawei.com>
> > > ---
> > >  tools/perf/util/pmu.c | 39 ++++++++++++++++++++++++++++++++++-----
> > >  1 file changed, 34 insertions(+), 5 deletions(-)
> > > 
> > > diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
> > > index 7e7299fee550..bc71c60589b5 100644
> > > --- a/tools/perf/util/pmu.c
> > > +++ b/tools/perf/util/pmu.c
> > > @@ -700,6 +700,39 @@ struct pmu_events_map *perf_pmu__find_map(struct perf_pmu *pmu)
> > >  	return map;
> > >  }
> > > 
> > > +static bool pmu_uncore_alias_match(const char *pmu_name, const char *name)
> > > +{
> > > +	char *tmp, *tok, *str;
> > > +	bool res;
> > > +
> > > +	str = strdup(pmu_name);
> > > +	if (!str)
> > > +		return false;
> > > +
> > > +	/*
> > > +	 * uncore alias may be from different PMU with common
> > > +	 * prefix or matching tokens.
> > > +	 */
> > > +	tok = strtok_r(str, ",", &tmp);
> > > +	if (strncmp(pmu_name, tok, strlen(tok))) {
> > 
> 
> Hi Jirka,

heya,
sry for late reply

> 
> > if tok is NULL in here we crash
> > 
> 
> As I see, tok could not be NULL. If str contains no delimiters, then we just
> return same as str in tok.
> 
> Can you see tok being NULL?

well, if there's no ',' in the str it returns NULL, right?
and IIUC this function is still called for standard uncore
pmu names

> 
> > > +		res = false;
> > > +		goto out;
> > > +	}
> > > +
> > > +	for (; tok; name += strlen(tok), tok = strtok_r(NULL, ",", &tmp)) {
> > 
> > why is name shifted in here?
> 
> I want to ensure that we match the tokens in order and also guard against
> possible repeated token matches in 'name'.

i might not understand this correctly.. so

str is the alias name that can contain ',' now, like:
  hisi_sccl,ddrc

and name is still pmu with no ',' ... please make this or
proper version that in some comment

thanks,
jirka

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
