Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD906CBEF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 11:30:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+r5moY/EGMEKJOeZm0lwneJX5NbKfuMyXPBSFX/1leU=; b=Tq0ipEnlo8Mm2F
	KY+/y+cYH7vBGpeat7XrhQjfcy1mNYxPSNFL17Y4FaFRH1d3NKGYnF3g3sY7AJqa66RLdjrooQ+Tv
	NqP0swb/yvEnzVT1beFjzK0T0d/LAuUfYjfyVEULFRyh2vxQURI/Mp4Mo9t+UBTBytydoP9WDiLbW
	UB0qN6ax6DsntRP15R2bB8em4JK80vpL1sGH+13gnCIX95vF1VgmD0ZeTsFCQSEKtYmzNuVaP/rE+
	JKAazIna451NBzaFOPAd5IV0WJ2L1YhIhv022FMhcNxGUIsKpEse2+txeGkIZCUWCj5k1+w+y/LlJ
	PPSt1oH/xXz543x15kPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho2kH-0004Lg-SJ; Thu, 18 Jul 2019 09:30:38 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho2jz-0004L1-QN
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 09:30:21 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 8CED0205CA;
 Thu, 18 Jul 2019 11:30:11 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 76BD5205BC;
 Thu, 18 Jul 2019 11:30:11 +0200 (CEST)
Subject: Re: [PATCH v2] pinctrl: msm8998: Squash TSIF pins together
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <agross@kernel.org>
References: <503b2ae8-ead6-70cd-7b21-ce5f5166a23a@free.fr>
 <20190704163527.GJ12249@tuxbook-pro>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <7431cf2d-4406-ff0c-331a-6ab82cf48b1f@free.fr>
Date: Thu, 18 Jul 2019 11:30:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190704163527.GJ12249@tuxbook-pro>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Jul 18 11:30:11 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_023020_003385_D7CA890C 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: DT <devicetree@vger.kernel.org>, Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 MSM <linux-arm-msm@vger.kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 =?UTF-8?Q?Jonathan_Neusch=c3=a4fer?= <j.neuschaefer@gmx.net>,
 gpio <linux-gpio@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/07/2019 18:35, Bjorn Andersson wrote:

> On Thu 04 Jul 01:57 PDT 2019, Marc Gonzalez wrote:
> 
>> TSIF is the Transport Stream Interface.
>> First, rename tsif1 to tsif0, and tsif2 to tsif1.
>> Then squash all 5 tsif0 pins into a single function.
>> Same for tsif1.
>>
>> Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
> 
> Thanks for the respin Marc.
> 
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Can you or Andy pick it up for inclusion in linux-next?

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
