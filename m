Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4DB9FCD89
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 19:28:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hp2L9adjypK6Rj134EAYGPqIPg7ietgBMu/hetmH3Wc=; b=KEwx3GnVCIOE7u
	3x4wwztkGIJ/UvlitFrRc4jtjNcg1GGEL14okmK4xseLM/xJxsBXa96wcq3nstZVojk0fCrKWvE/s
	EmReQGwoMdnz2V/jfD+D7SQSDNeXZ+J86MPQacWqKDVLsrgS3A2kIZoY0V9jnMg7a1uYQDbsXLrio
	pX301QzMs1ypptkM+9Xy/l3EkPFqUPg0sUknOIHPxF4ieIvFLZ5NnC4e4Emz9N3ZjWgRTgUhDwY45
	Wfmb7fRDsx4wwSKO7t5tz2XFUXmZWD+M0DPVTMjdalhB7VsLHT+un0Ti05AjRETTuHkY9tcPdcLyX
	f8JL1aFJI+tb0Ba7avAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVJqg-000100-C4; Thu, 14 Nov 2019 18:28:06 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVJqJ-0000vV-Gf
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 18:27:44 +0000
Received: by mail-oi1-f193.google.com with SMTP id s71so6150141oih.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 10:27:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8He97cXELbuSFR63zDapnWyBHvhWcxQcIpiz/Ztauww=;
 b=D7EywRoK6RYt+R8YDM138CYyk0dRtKctVDT8qhgK3OKmMRVhdEEYknJ6Solt60ZF+B
 byLjYN2niHlGpfuWe9Oss8t5SddO3LHHySidXnh1Q6FgoH1W/a3StFzf9XU+QQHoUfqo
 9XS6i/RjjOifbqBDXyNnVe8ZzdiY78ZDsLHSNPmAWknX0GbvRLPz/7AsHB50hfWCytlC
 rDNkFWSQGs5YIAEx5dj/yVJyvSAZzhUT2OjQrLuHlI+a6i48SbL4cnjUsEWzyjYatI+X
 7YUwD5i8togn9ASEgfkXSMJnv2eLJ7sRlKIglWt1WKZfQ3Yw6N+jNIQ3GIyIUKPiOzzg
 6xaQ==
X-Gm-Message-State: APjAAAUD5c1wQnbrkVVnQzjM8Lyyzrxj16Pdqbr8o31lE01PlhxVB0RQ
 OWeueO3nJRrMAPe/RTJmDw==
X-Google-Smtp-Source: APXvYqzxQagjwTYvMPUFG0Oo9zNFaeioYxFRTV5TSy89ohIWgShYag+Hww7iOkylWMfxMjF0FwasPQ==
X-Received: by 2002:aca:cd02:: with SMTP id d2mr4814481oig.80.1573756062663;
 Thu, 14 Nov 2019 10:27:42 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 65sm2036620oie.50.2019.11.14.10.27.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 10:27:42 -0800 (PST)
Date: Thu, 14 Nov 2019 12:27:41 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH] dt-bindings: crypto: Convert stm32 CRC bindings to
 json-schema
Message-ID: <20191114182741.GA28603@bogus>
References: <20191108125244.23001-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108125244.23001-1-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_102743_576961_A159103A 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, lionel.debieve@st.com, alexandre.torgue@st.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@st.com>,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org,
 herbert@gondor.apana.org.au
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 8 Nov 2019 13:52:42 +0100, Benjamin Gaignard wrote:
> Convert the STM32 CRC binding to DT schema format using json-schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  .../devicetree/bindings/crypto/st,stm32-crc.txt    | 16 ---------
>  .../devicetree/bindings/crypto/st,stm32-crc.yaml   | 38 ++++++++++++++++++++++
>  2 files changed, 38 insertions(+), 16 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/crypto/st,stm32-crc.txt
>  create mode 100644 Documentation/devicetree/bindings/crypto/st,stm32-crc.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
