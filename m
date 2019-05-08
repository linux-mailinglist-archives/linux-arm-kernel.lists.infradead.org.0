Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AEB7182A1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 01:17:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xuyxK4elchkcdyrpswDPSl9xF5jAl68958/d5CZMOSs=; b=TCCKzp+0UhJ5CZ
	EtjRmOwOGecwySqisacIQrx3gsfj1vsH8TI30RWGArlv0hJLexad4XRU3zSZry6zbVF0M8rsR/QqL
	vIloHK7IQuD2e4OG3v7jLi6WEU+pMUlCs7R27nPSU81zAvSbnuL68Po8ZvLQz9UcKd1bRMFL/66Sd
	Ce2857h8EMG7ZWyIp4LPZNahwnho8n3Hc8PYkWZHf5mBORnfpLOEwSOl8pWEcI4qAQnoPIeAGsPqQ
	7XJXS3+XJTkou7ohC/86Eng+QuU+yyZ272d3w+FT9n0XKj55IPEvmIdja6qxS3YYHJsHDHAY65VQB
	WiwloE6KPM3EGH2sw35w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOVoY-0004jD-Mc; Wed, 08 May 2019 23:17:30 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOVoQ-0004iK-VI
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 23:17:24 +0000
Received: by mail-yw1-xc44.google.com with SMTP id w18so312243ywa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 16:17:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=s0XmE/SSKgdB2Zi6D0Xro94Z8cgKXXoHmAWbL6G9FWo=;
 b=sLmnrLoj9lksRIXKKwys/IS3j0vPyEkYExfwLWVWdBx4HZSJVlsq6V+Vcf0ziNQQXz
 tLNKweEYQZF5GPp1himBK4SukfKMRv8LNyieGXS9Q4p1HiRGZOSAgzaLM70MkdANCFQw
 AQoOZauRkNQ7f08wPTDIbVVbeXycI6ItQ4bsLu4BBd48f5j66b4Q2cy4cY30dpXqvtmI
 3rDnWpAwEynr3nOGBGWDrWG+3tscb8+2mNShKm9w2EsL4pzymELY3CkHRmw95lrldL7E
 m6zskT1VxOvRzv1Bisnr3WAbliDNqSKsBQDpuoy5IoynKxtd6+D8jt/dxoaccO1izrH7
 GMSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=s0XmE/SSKgdB2Zi6D0Xro94Z8cgKXXoHmAWbL6G9FWo=;
 b=hoIYugGxGPltI/57BknGFPzgy9sJyB1VFcTlCkoExh2kKXCI8RlvoUNUQnf9A3CYDB
 JxBZ6KCCMJDYYVmhHOI+Ha+Auj7hvGlMFKmNoCqLLdLeEAEyaBmWWXOzkCnBIgP/fFpE
 Y117AD5GQoh9V8JeGUMQwEqZFswEbueWR0oez+jOskjTsvq0MZpfZPGoxtRa66T4nrCO
 ryMF3UGwnYTIeQ2dFX96m3Lha8vhO7i9+r6YEVb5lee/scQUKllDq8UKQ9lY+lYeIztY
 BiMTKRCy0TQhy0S99Ec+V3KXhDTqkTTrxu8yn7LYx1Jt6ultwarodG9HVPgpliJonVxu
 3yEg==
X-Gm-Message-State: APjAAAXv8cMOczpB4SRhl2lL+DIB//mgetyBbrhcEotUzlr+E1VV9AiC
 ba1Je1YD4YqSnVbGPbZDRNV+hw==
X-Google-Smtp-Source: APXvYqwCScrOtsn/r0nbplNIVpXXh8yEgVNfGi8tKe9k+OX0Y8w8/cROWDlp9BASceZ1pGqP2kWGog==
X-Received: by 2002:a81:170e:: with SMTP id 14mr232136ywx.238.1557357438787;
 Wed, 08 May 2019 16:17:18 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id v128sm110717ywd.24.2019.05.08.16.17.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 08 May 2019 16:17:17 -0700 (PDT)
Date: Thu, 9 May 2019 07:17:06 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v2 00/11] dts: Update DT bindings for CoreSight
 replicator and funnel
Message-ID: <20190508231706.GA5840@leoy-ThinkPad-X240s>
References: <20190508021902.10358-1-leo.yan@linaro.org>
 <9c56323b-7b14-c662-b824-ed60fbb1638f@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9c56323b-7b14-c662-b824-ed60fbb1638f@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_161723_010357_BBEB85D9 
X-CRM114-Status: GOOD (  15.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, andrew@lunn.ch, linus.walleij@linaro.org,
 liviu.dudau@arm.com, david.brown@linaro.org, haojian.zhuang@linaro.org,
 festevam@gmail.com, Lorenzo.Pieralisi@arm.com, zhang.lyra@gmail.com,
 xuwei5@hisilicon.com, agross@kernel.org, linux-imx@nxp.com,
 orsonzhai@gmail.com, cphealy@gmail.com, mike.leach@linaro.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, robh+dt@kernel.org, zhangfei.gao@linaro.org,
 lee.jones@linaro.org, linux-arm-kernel@lists.infradead.org,
 guodong.xu@linaro.org, mathieu.poirier@linaro.org, baolin.wang@linaro.org,
 linux-kernel@vger.kernel.org, zhang.chunyan@linaro.org, kernel@pengutronix.de,
 Sudeep.Holla@arm.com, shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 08, 2019 at 03:29:12PM +0100, Suzuki K Poulose wrote:
> 
> On 08/05/2019 03:18, Leo Yan wrote:
> > Since the DT bindings consolidatoins for CoreSight replicator and funnel
> > is ready for kernel v5.2 merge window [1], this patch set is to update
> > the related CoreSight DT bindings for platforms; IIUC, this patch set
> > will be safe for merging into kernel v5.2 because the dependency
> > patches in [1] will be landed into mainline kernel v5.2 cycle.
> > 
> > In this patch set, it tries to update below two compatible strings to
> > the latest strings:
> > 
> >    s/"arm,coresight-replicator"/"arm,coresight-static-replicator"
> >    s/"arm,coresight-funnel"/"arm,coresight-dynamic-funnel"
> > 
> > Please note, some platforms have two continuous patches, one is for
> > updating static replicator compatible string and another is for dynamic
> > funnel change; and other platforms have only one patch since it only
> > needs to change for dynamic funnel.
> 
> This is now misleading ;-), but that doesn't matter.

Oops ...

> For the entire series :
> 
> Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>

Thanks for reviewing!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
