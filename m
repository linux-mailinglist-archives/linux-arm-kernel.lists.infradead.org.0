Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 083F6212AE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 05:55:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tfqh0utM/aZoyZQcZgQKDl8Mo5S3JagzMtc3r/H8s+M=; b=W49zXs4WswThW5
	+ylyjfOMY8p3hMnuPF00SScDm6XTMVWeZQEVnLGxqopxJCJF3ltUStIxOGkgngGDUV3cG3aobkdcu
	VtYxE1KtD1YAXTnJ4NdFsR4GGM1FjxTPsfpbRedwbNfzhWj5rgZpKbrGniiDvAvac53oImqVDY5M+
	cUxKZFshn/SrKzWQwJ94VbCYLw7/5SLm69lwOYT+t9YsUXeGBdrZ7CNaOr/8ywg5Me8h+LD4i1dcq
	KhaxytwfIzer4EFxb5xbeFTX6ySXAbdyPlkgy4zDTTqeeVIKh1bHu/Jq7QP76vL8H8gdZc3IOmk+S
	PBm9Q8hFjnbmBx97X0Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRTxR-0000wf-Sd; Fri, 17 May 2019 03:54:57 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRTxJ-0000vs-K9
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 03:54:51 +0000
Received: by mail-pg1-x541.google.com with SMTP id z3so2606178pgp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 20:54:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=aSWv/3E5xONuctyVCVpI+09Uko/UnXB8canipxV/tCA=;
 b=SNRqwJ7EZ+/CWo5k9NfHmkbROXRuPjzLmaJu4Rvhsi2l9ucWEJJyifU4TP5Ztq5eFf
 6yKDtee7U8Gt3U1ALOf2SaDQI2wHmrlXYvApMqK8XlX7Dap63oqg3JaVwGKD3YMSmDq6
 +0WcehHzxLN5r0deh1CF8RwD0p1D+2oHPRmQM0CJRfogIubkEe5u+1cLLMtL6erU83Oy
 ZBbLTl6s8SiHgA09T5XdzCdIm2uarVZjmqXuWvZZqFHp5VHApjuV5t8QPaKMJPgfz83E
 GHMtBBOyWce4MkW8aJ2mY29Kmb6Lm7Cs46J206H6T+oVs14QAKRL43wtfkxVlMoqS/n4
 L+CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=aSWv/3E5xONuctyVCVpI+09Uko/UnXB8canipxV/tCA=;
 b=NqXcYfExYV6Ebg4vAKwS4kaxsqhNPXN6tsib1LMpvBcxLHMyrdgcX5di1mrybCWdeX
 8sspISaGm6L1BFLreDMMD1t/6kmdleJD0424yv9MVL70r/dTrLN9xuWI+jToEfmfNyh/
 RpwXqhfN8teed7LET2kA01pNa795LGTfG2dFex8iegs23Eg+VEVXEISS/j/3ccnqG7aX
 vfoEH4eWC0j1u1qHJW9/RdaWQY4fv9vK9ECC1sqiJq9iVV9Xi6+gXTXQ7DkKLqUfVi4M
 dXtYN3QQo9Hu7J/CMZ5UHYXtmMhWNgcOISgXfnW6PQqKMW46mZI8aUDiAvcIOaFp7pt5
 sKsw==
X-Gm-Message-State: APjAAAVk8cnxvmaOKQMXqwKJmW5okP+yK0OpaJTN96KQrKkhHnQH5p5/
 AU/DdcV/pVjz4IItPT1glidS
X-Google-Smtp-Source: APXvYqzoHXX1P5yhzflXLHPYow3wkn9VYYg/Butit6e08vzoVnsngfCu3i4rgBTsIxwoAWOQnOO4yg==
X-Received: by 2002:a62:5f42:: with SMTP id t63mr15660001pfb.83.1558065288251; 
 Thu, 16 May 2019 20:54:48 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6390:5018:b478:7b0e:49e:16a3])
 by smtp.gmail.com with ESMTPSA id s12sm12152355pfd.152.2019.05.16.20.54.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 May 2019 20:54:47 -0700 (PDT)
Date: Fri, 17 May 2019 09:24:40 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: stm32: Document Avenger96
 devicetree binding
Message-ID: <20190517035440.GA12863@Mani-XPS-13-9360>
References: <20190506100534.24145-1-manivannan.sadhasivam@linaro.org>
 <20190506100534.24145-2-manivannan.sadhasivam@linaro.org>
 <20190513180246.GA8487@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513180246.GA8487@bogus>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_205450_039680_A3B68E72 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, alexandre.torgue@st.com, loic.pallardy@st.com,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Mon, May 13, 2019 at 01:02:46PM -0500, Rob Herring wrote:
> On Mon, May 06, 2019 at 03:35:32PM +0530, Manivannan Sadhasivam wrote:
> > Document devicetree binding for Avenger96 board.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/arm/stm32/stm32.txt | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.txt b/Documentation/devicetree/bindings/arm/stm32/stm32.txt
> > index 6808ed9ddfd5..eba363a4b514 100644
> > --- a/Documentation/devicetree/bindings/arm/stm32/stm32.txt
> > +++ b/Documentation/devicetree/bindings/arm/stm32/stm32.txt
> > @@ -8,3 +8,9 @@ using one of the following compatible strings:
> >    st,stm32f746
> >    st,stm32h743
> >    st,stm32mp157
> > +
> > +Boards:
> > +
> > +Root node property compatible must contain one of below depending on board:
> > +
> > + - Avenger96: "arrow,stm32mp157a-avenger96"
> 
> With which SoC compatible?
> 

I referred some other platform bindings (non YAML) and they don't
mention the SoC compatible with boards. Shall I just put it like below?

Avenger96: "arrow,stm32mp157a-avenger96", "st,stm32mp157"

Thanks,
Mani

Thanks,
Mani

> > -- 
> > 2.17.1
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
