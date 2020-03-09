Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D2F17E010
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 13:20:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l6dGneJJChqbjGzHxu1gwfwwZUf/Mb3Q8qu1bR3YMx0=; b=jij9DHw5lrB5Vu
	xu2mirOpzQJyTr8jHU21X4YuY0q1VLpZ1zTUDS6b8Z3LpIi9r3MovKMnn+kNfvCsAoGXVxpIQ6nsW
	iMDN+D6mjGQKHHiNTEaIxBolTeADNq+A/jcR3zo3NFx7dnl+XRzeutcFLOuXsDZYQtwLWF15YB8Qy
	RoI9HlgggQjfQEajxbmtfCBhvwqdCo6bN+0AETi92sUgE9cmJeGpfOnRYZXT9CrC/bRVahC2vPEGG
	rq1pZV/NFx3Mt0PJE8LfWfsznmjQotXeFxXmlTY/6T+YJzy9iV5XPISlttddaPxhMDII3WF1bkds3
	VqXXx0bXnDnYQrV8Gsfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBHOM-00013v-S9; Mon, 09 Mar 2020 12:20:18 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBHO2-00012H-5x
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 12:19:59 +0000
Received: by mail-pf1-x443.google.com with SMTP id i13so4751984pfe.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 05:19:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Ej6XSzJLYzxEyi6Ocy5OL+BE9DVMwhDVxnF5ycV3aIk=;
 b=PFu51PxIgJeDVhu7L9GMap2eWWU3fBEtgaGKiFxkIIxq2NO0AqSLX0NdoR2iMu7YsY
 khArj/LGCX97paN9bCCLIdFaV5ZJcY16Ae0m2/SaTJw7xSNOpr6ob7BoMPo+2JbLokMa
 SwMbwkdpWLLoGYPbO9xaYGa5dywKXY4hYWhz0djBT9V98DZUBkI02C5ph3O7NPw7ePpm
 mPD6txkpShzFOePuw/uPXOoaFXOhji2K0WFH5qtoQPAsPk/oUseWFw4A3ep51e65iGNv
 6+taN+BFCB8Ki3+pJetpYCGI7KdhrK8ZSZRaFbWvHWnEDl7he+acJHa1Ve8LrcmMcjYn
 RMMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Ej6XSzJLYzxEyi6Ocy5OL+BE9DVMwhDVxnF5ycV3aIk=;
 b=bsx/oVkMc/5fdwEOcnFZtlO+aMo64bLgk+7gQUNFaqG5exJyEIPXMmkQlVSA0Kl9HK
 E9HoaOaQ2Y+dx2IF6BS5owqFxL1Wb2YYn/FtoHn04fRjS66E9m2Pj8K3kLOYHsbAtwoi
 3Uz7osSjzr4lkjdmAaB1GYRMv+cbT8huYp3kAycJjG0/SVo5bLD/hzPxbsgZeA3wL+q3
 GCFVH0XDvqKLS+GTqJIsBxxjGRu4B2oiYCme5T0Zp/F9RVKjGUyZPNG7CaL65mYjiCg9
 zOFnu0nKlbTucGG0P+rhPQZaRXehA1Y3UbSjwiDJxUOZOIaoymSklf3IidLWjZmCYQlw
 KXvg==
X-Gm-Message-State: ANhLgQ2fB1loqDhDCthVooi4wF5E1AC6YGAIkFp++TDbbHcOqFVN1ecy
 kjTu9fK5TmGzbtIibY5uTZI=
X-Google-Smtp-Source: ADFU+vtClGXedATmMO0ze3AXltE9YTnUAE5pH/7dif6BPipMZxsEXrF9KLZksP0HB/4yi1AHbw0Y4Q==
X-Received: by 2002:a63:445:: with SMTP id 66mr15727738pge.351.1583756397519; 
 Mon, 09 Mar 2020 05:19:57 -0700 (PDT)
Received: from localhost ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id p21sm44552991pfn.103.2020.03.09.05.19.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Mar 2020 05:19:56 -0700 (PDT)
Date: Mon, 9 Mar 2020 17:49:55 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Lubomir Rintel <lkundrak@v3.sk>
Subject: Re: [PATCH v3] ARM: mmp: replace setup_irq() by request_irq()
Message-ID: <20200309121942.GA10426@afzalpc>
References: <20200301122243.4129-1-afzal.mohd.ma@gmail.com>
 <20200308145348.GA7062@afzalpc>
 <20200308161903.GA156645@furthur.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200308161903.GA156645@furthur.local>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_051958_246836_17A61C21 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Olof Johansson <olof@lixom.net>, Thomas Gleixner <tglx@linutronix.de>,
 Enrico Weigelt <info@metux.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lubo,

On Sun, Mar 08, 2020 at 05:19:03PM +0100, Lubomir Rintel wrote:

> It has been
> Acked-by: Lubomir Rintel <lkundrak@v3.sk>
> Tested-by: Lubomir Rintel <lkundrak@v3.sk>

Thanks

> (afzal; I believe I've responded with the Tested-by before; please don't
> forget collect those when resubmitting patches in future. Thanks!)

The reason was a few minor changes in v3 vs v2, as that was the case i
was unsure whether to keep it or not, so went conservative & removed it.

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
