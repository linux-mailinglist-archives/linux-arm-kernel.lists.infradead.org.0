Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4FF5F3BE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 09:30:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IDMIzWYCst/rBjMchwdZl67dN9WOSe8RWd/dketH6xQ=; b=g9ZlMhehH5YeDE
	+C39xWR9PNh7N/TSQkxpQwa3BA7QYXaMXOTOwevtQlJpiFVSxYrHjaWOabCBdXaD46oqJErONHshK
	CYGd1ONesJaScfz25qFft7REeSPIS+v56Kasiih8WHHh5Z+wl4hUS4iizwjtLSTQV9ODfljZ65WqT
	fhFeZaaPu1Sa00DHYUX0RX4yWFsPOmwkS/5nLH5x7299W+s0QYtk5oqML9IzPlX0cHJIPRzzpkGY9
	VWVirKkqMo7M7HeSuQ6s1WMBd2DiWnruaLyWrBvNHUr0gC0bqztNj6zcipSEFIBla7sk1crplKdEm
	yYYQsojTYy2EqaeoYYEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiwCN-00005u-9E; Thu, 04 Jul 2019 07:30:31 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiwC8-00005E-Jg
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 07:30:18 +0000
Received: by mail-oi1-x244.google.com with SMTP id g7so4214713oia.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 00:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=v/l9q091iJ9jlOZDMSINHC8sirnGZUuXqQZD2C5fUG8=;
 b=jNCeHKQ5QfPSn8cioOrEquvk/atWL2iS4Brlk7s200bvEOKpmDUseZ7T7v5hFQg0qY
 EBOvTKCaCjfLVJk9NUpHU+Wifonr2t4GJoXT/dLUJwaEYOv378ImKqKzOvx7SWfMf8+w
 H03hpogOmAIob3qSK1ag8f0DucXB93M4b2QaAyOZ6h9EXSsJfGof5W2XbuAbwaAFCS6k
 MebUXyXGADPR2gWwjBioOX5Ntb9XepjETMWa8IKank+uIqmfPdr8JXDMYp7AS9wYN5F/
 lBl2WgXz72csjJUD/FWBukYXZ6b5S3kMwbDPyXUKJB95LWSZWEqs66sef6Sn0TvLvr1e
 ejPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=v/l9q091iJ9jlOZDMSINHC8sirnGZUuXqQZD2C5fUG8=;
 b=p5d9ngwGeAkn++2f92RY2rOM58F2JEizpafokOx5qRpcWNECXSjV6P3/3zp02GqElC
 xsEmZteE8eKGdqFQmnv9ecN4Hn2a2zN3LkssoWX75UE1pedZjPI5CX+VwbeZcOxBP0Bf
 YuiOlQMNZj74mlRR49VVxUtjQukapToYSw9heLFikJKsmq+5feYGciv2ONJwyp5QCO0i
 kXIGm6HgvWRlDjz4iIn08NM7K8aFCV2x4HE+bYNPcGpH6grTIo9Hiv9JRy6FDbPoEHjL
 IqoV5HLHD4TqvAwvgcNYGUwQRuzMcBu6jHI5jR69FrZ1BUWE47YLJXLOaFyT9RPjRHvs
 cfZQ==
X-Gm-Message-State: APjAAAWBt6tvrO987RwfMieAIWnTA+UHq0IpEgSLCE0GoHFNObQLu66w
 4tz6CVoouLscocREMKO2zGeweg==
X-Google-Smtp-Source: APXvYqwKhxZwXdpK9O0CdmMHegBrL9ntWx2osl6yxpMC9R8tjXNTIrsha36S7OWESW4jMfrxWYLLgw==
X-Received: by 2002:aca:4255:: with SMTP id p82mr1142651oia.6.1562225414842;
 Thu, 04 Jul 2019 00:30:14 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li964-79.members.linode.com. [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id k3sm1640278otr.1.2019.07.04.00.30.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 04 Jul 2019 00:30:14 -0700 (PDT)
Date: Thu, 4 Jul 2019 15:29:58 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Subject: Re: [PATCH v1 00/11] perf: Fix errors detected by Smatch
Message-ID: <20190704072958.GA26160@leoy-ThinkPad-X240s>
References: <20190702103420.27540-1-leo.yan@linaro.org>
 <20190702110743.GA12694@krava>
 <20190703014808.GC6852@leoy-ThinkPad-X240s>
 <20190703181815.GB10740@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190703181815.GB10740@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_003016_655887_BC94262F 
X-CRM114-Status: GOOD (  20.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Song Liu <songliubraving@fb.com>, Peter Zijlstra <peterz@infradead.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Jin Yao <yao.jin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>,
 Andi Kleen <ak@linux.intel.com>,
 Eric Saint-Etienne <eric.saint.etienne@oracle.com>,
 Konstantin Khlebnikov <khlebnikov@yandex-team.ru>,
 Ingo Molnar <mingo@redhat.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexios Zavras <alexios.zavras@intel.com>, Davidlohr Bueso <dave@stgolabs.net>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Thomas Richter <tmricht@linux.ibm.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>, Changbin Du <changbin.du@intel.com>,
 Alexey Budankov <alexey.budankov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnaldo,

On Wed, Jul 03, 2019 at 03:18:15PM -0300, Arnaldo Carvalho de Melo wrote:
> Em Wed, Jul 03, 2019 at 09:48:08AM +0800, Leo Yan escreveu:
> > On Tue, Jul 02, 2019 at 01:07:43PM +0200, Jiri Olsa wrote:
> > > On Tue, Jul 02, 2019 at 06:34:09PM +0800, Leo Yan wrote:
> > > > When I used static checker Smatch for perf building, the main target is
> > > > to check if there have any potential issues in Arm cs-etm code.  So
> > > > finally I get many reporting for errors/warnings.
> > > > 
> > > > I used below command for using static checker with perf building:
> > > > 
> > > >   # make VF=1 CORESIGHT=1 -C tools/perf/ \
> > > >     CHECK="/root/Work/smatch/smatch --full-path" \
> > > >     CC=/root/Work/smatch/cgcc | tee smatch_reports.txt
> > > > 
> > > > I reviewed the errors one by one, if I understood some of these errors
> > > > so changed the code as I can, this patch set is the working result; but
> > > > still leave some errors due to I don't know what's the best way to fix
> > > > it.  There also have many inconsistent indenting warnings.  So I firstly
> > > > send out this patch set and let's see what's the feedback from public
> > > > reviewing.
> > > > 
> > > > Leo Yan (11):
> > > >   perf report: Smatch: Fix potential NULL pointer dereference
> > > >   perf stat: Smatch: Fix use-after-freed pointer
> > > >   perf top: Smatch: Fix potential NULL pointer dereference
> > > >   perf annotate: Smatch: Fix dereferencing freed memory
> > > >   perf trace: Smatch: Fix potential NULL pointer dereference
> > > >   perf hists: Smatch: Fix potential NULL pointer dereference
> > > >   perf map: Smatch: Fix potential NULL pointer dereference
> > > >   perf session: Smatch: Fix potential NULL pointer dereference
> > > >   perf intel-bts: Smatch: Fix potential NULL pointer dereference
> > > >   perf intel-pt: Smatch: Fix potential NULL pointer dereference
> > > >   perf cs-etm: Smatch: Fix potential NULL pointer dereference
> > > 
> > > from quick look it all looks good to me, nice tool ;-)
> > > 
> > > Acked-by: Jiri Olsa <jolsa@kernel.org>
> > 
> > Thanks for reviewing, Jiri.
> > 
> > @Arnaldo, Just want to check, will you firstly pick up 01~05, 07,
> > 08/11 patches if you think they are okay?  Or you want to wait me to
> > spin new patch set with all patches after I gather all comments?
> 
> I'm picking up the uncontrovertial, will push to my perf/core branch,
> continue from there, please.

Will do it.  Thank you much for amendment in these patches.

Leo.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
