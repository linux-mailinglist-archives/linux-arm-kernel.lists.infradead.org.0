Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB6DF988B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 19:23:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qF9azwx+++Risdtw9Fitjp6FfS1ktyflK6SUdn/vVQg=; b=lcvW4seufejN6K
	ioitHEGoQU7gvuxTAjVRbsFQ0SWhT2V+v7FthVU0XgOBONScW9SzKTnd70Dbkop2JtibGzrMucPTc
	GdwDHoCk0ioc1gDBDCBRd+ns//dfpom5pUygsM8YeAIan5EXNAQD0tjSNBvAgPwxDxomlDPxBkMpE
	CN2haf/6BSpEMT3Oa18NKt60ZR4ftqTdi5acmEsoSLiwwlm79usruDgc5Co/e1sW+85MmFWjKd4nZ
	5/d7VCSYAgGrz9a+m7ziLK33lhzXmsabtqvhjC2gzUHk1ry8IbKzGLb7Z6yeElXNR4+NgYvGgsNso
	8RNHRIYJ3N6goZUjAn1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUap5-000443-5b; Tue, 12 Nov 2019 18:23:27 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUaoN-0003ig-T0
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 18:22:49 +0000
Received: by mail-pg1-x542.google.com with SMTP id w11so12359687pga.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 10:22:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=eN2ydQIW1tC0Y5Z0139/3auQ6iVhazzk9qa2dg7E35A=;
 b=MWBU2TrWEjnv7/l1uY+2LGCdf2/o3Ps8RrNThkke2K6F5E2Kd7kAIELZvATtRT5rpo
 44FXpxsAjez8dSk53I99VA17eLO+/DHGY2TcyBtnlWFy55VrQ8bW5P4CmBQULXQ6Jyz/
 qAVTlGOcsac833IhAMBPJ2Aj/vcOobVMXUx/Vl77MUJlBY7ePRdUfWqHzPb+odViVwwv
 ILKi2oqNsZ+N92V9GB9awn5VUVN+kraXUpzEzLJQcj5osoE1MSaLog1Kqzec9YdnZSMj
 aqNP8LjsnUfceLLGOd7VirMYcn8Yryhe5YAqX+dmewAnlGkPHMt11OrG/hihxNrexAme
 4Yxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eN2ydQIW1tC0Y5Z0139/3auQ6iVhazzk9qa2dg7E35A=;
 b=marSPDLXoJTQabAgwleDpAZMvId/8sl/5yvBEDridhETQUMYjrKvvgpue7tjqprh65
 nHwNM2hUwIvoeKuTOv9fPP0VhtdsjBT0VTbsVCtO6CsGq04xyo2SVmkqNeIXBSdL7/hV
 xJQOmZiGYrFl9KrH0eGj2MS9XkHgVCbHTojwclK/Uu/NU/Y9La3vTT5TsyC+wtBPh7Jw
 +cM9HEjp5lJjcKXrz7dWqu1VQ1GSeD1KG36dl3+PeZ8eNvB/UwNDqqty57wg/IW0AmoZ
 QsUAsq0JUUkx5r0RfPPzc5AJIVaPVvRhHdWx8ln7HMhQPuDHA/au4mEWmgJ4Z23xmqsu
 e2og==
X-Gm-Message-State: APjAAAWxwSGkI5pFZjS0u84BksHTPmWQE0E3ryFhPFGSSvdrUnUVfiBc
 Onq7+PLgxzPnDIY2l+fLrAHXXw==
X-Google-Smtp-Source: APXvYqyNFBPp/s1UwzZ90jSmHOfBQDutaWu+vqexmr5bu/ksMtz7nUUVT9E1TsDpGP8PNhA0IjGiIw==
X-Received: by 2002:a17:90a:2470:: with SMTP id
 h103mr8728391pje.12.1573582962818; 
 Tue, 12 Nov 2019 10:22:42 -0800 (PST)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id e24sm3139075pjt.18.2019.11.12.10.22.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 10:22:42 -0800 (PST)
Date: Tue, 12 Nov 2019 10:22:39 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Fabien DESSENNE <fabien.dessenne@st.com>
Subject: Re: [PATCH v2] remoteproc: stm32: fix probe error case
Message-ID: <20191112182239.GA21530@yoga>
References: <1570433991-16353-1-git-send-email-fabien.dessenne@st.com>
 <20191111220416.GB3108315@builder>
 <392808fa-1504-233f-234b-0cca21886c17@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <392808fa-1504-233f-234b-0cca21886c17@st.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_102243_942906_5996A587 
X-CRM114-Status: GOOD (  22.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 Loic PALLARDY <loic.pallardy@st.com>,
 Arnaud POULIQUEN <arnaud.pouliquen@st.com>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 12 Nov 06:09 PST 2019, Fabien DESSENNE wrote:

> Hi Bjorn,
> 
> 
> On 11/11/2019 11:04 PM, Bjorn Andersson wrote:
> > On Mon 07 Oct 00:39 PDT 2019, Fabien Dessenne wrote:
> >
> >> If the rproc driver is probed before the mailbox driver and if the rproc
> >> Device Tree node has some mailbox properties, the rproc driver probe
> >> shall be deferred instead of being probed without mailbox support.
> >>
> >> Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
> >> ---
> >> Changes since v1: test IS_ERR() before checking PTR_ERR()
> >> ---
> >>   drivers/remoteproc/stm32_rproc.c | 10 ++++++++--
> >>   1 file changed, 8 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
> >> index 2cf4b29..a507332 100644
> >> --- a/drivers/remoteproc/stm32_rproc.c
> >> +++ b/drivers/remoteproc/stm32_rproc.c
> >> @@ -310,7 +310,7 @@ static const struct stm32_mbox stm32_rproc_mbox[MBOX_NB_MBX] = {
> >>   	}
> >>   };
> >>   
> >> -static void stm32_rproc_request_mbox(struct rproc *rproc)
> >> +static int stm32_rproc_request_mbox(struct rproc *rproc)
> >>   {
> >>   	struct stm32_rproc *ddata = rproc->priv;
> >>   	struct device *dev = &rproc->dev;
> >> @@ -329,10 +329,14 @@ static void stm32_rproc_request_mbox(struct rproc *rproc)
> >>   
> >>   		ddata->mb[i].chan = mbox_request_channel_byname(cl, name);
> >>   		if (IS_ERR(ddata->mb[i].chan)) {
> >> +			if (PTR_ERR(ddata->mb[i].chan) == -EPROBE_DEFER)
> >> +				return -EPROBE_DEFER;
> > If for some reason you get EPROBE_DEFER when i > 0 you need to
> > mbox_free_channel() channels [0..i) before returning.
> 
> The mailbox framework returns EPROBE_DIFFER to inform that the mailbox 
> provider has not registered yet. I do not expected to have a success 
> followed by a EPROBE_DEFER error.
> 
> But in the very special case where we use two different mailbox 
> providers this may happen.
> 

I agree, it's unlikely to ever cause any problems...

> I will send an updated version, thanks for pointing this.
> 

I appreciate that.

Thanks,
Bjorn

> BR
> 
> Fabien
> 
> >
> > Regards,
> > Bjorn
> >
> >>   			dev_warn(dev, "cannot get %s mbox\n", name);
> >>   			ddata->mb[i].chan = NULL;
> >>   		}
> >>   	}
> >> +
> >> +	return 0;
> >>   }
> >>   
> >>   static int stm32_rproc_set_hold_boot(struct rproc *rproc, bool hold)
> >> @@ -596,7 +600,9 @@ static int stm32_rproc_probe(struct platform_device *pdev)
> >>   	if (ret)
> >>   		goto free_rproc;
> >>   
> >> -	stm32_rproc_request_mbox(rproc);
> >> +	ret = stm32_rproc_request_mbox(rproc);
> >> +	if (ret)
> >> +		goto free_rproc;
> >>   
> >>   	ret = rproc_add(rproc);
> >>   	if (ret)
> >> -- 
> >> 2.7.4
> >>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
