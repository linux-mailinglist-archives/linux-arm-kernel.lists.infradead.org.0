Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E72BFCD8C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 19:28:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cnpMS43G29z+yfgXlKFrw3u/2EJYbJKWaSy/CNjq3Zs=; b=e3GbPgcdmG1q3Q
	gNLzuunMyO3E8UXezCK83jwd5j25WknKq79S+aOlhwg39471toKrcDQ2eveoyS0QwoneGq4RmcEz0
	0HaKD8tuOKcUojf3g+bgIZFcyrShYzH8LVqf+10pCsMdYg/a4hMLYJB+XXL9lPDPuBPc8/RJbJ8Dd
	XcG4kSU9mZYpvl0AGghstFtCKd2Ia9ERut5clcMlzCZaxt+N7Bu7jiBmrUSsU2gMctWwlJv6inKDI
	7ivfFLWx7vJgT40YwSXGZMlUc1In3fmPtFjVB8Hm51Xbm5RWXvxPwfFb8mW9JIIc+pLmNX3H6ixXL
	jsWf+lHWLqls/fAqFzAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVJr7-0001Mf-2E; Thu, 14 Nov 2019 18:28:33 +0000
Received: from mail-yb1-f194.google.com ([209.85.219.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVJqn-0001I7-2c
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 18:28:14 +0000
Received: by mail-yb1-f194.google.com with SMTP id i7so2932179ybk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 10:28:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=c57kRuz/wdX2ojYongufIJZjkHTf4M0B8KckeBCmq7w=;
 b=NQAXmPzWrLnvMaxT3eGN4NiPstv0yPa5NihOhhIW7ff95d7c9ch+Gmfuuubf19IJ4s
 ST47GI1xP9duXUjbYTCu3PiJlUcqpyl/0JYVMQPod8uyEpbZOgevuJ7nvgaqpD4pIv5N
 ptAAWHY5THzrPEMOVhfbdNvEQ7BuFaWZvRFH0FNnpl6EeAtQW7ZkNuHtxKDzxHyqePiX
 gkrPuZDvzPj/wkDo/+MHuVdj74zRDWJ+K6Ds4mtgJ8lTpX6U/N97KJCyzWGEUWu/FxH6
 mqHpHqRYRbQnNUq92fLLKo7dDbaKMGdPMI3LHikWEYejOAZ+AcnuRjGsBrwpFZQWDQd6
 5qrg==
X-Gm-Message-State: APjAAAUOJogLWnlz3iNWOnhKLvtIKreLGxFtlROInES0J5/gKfF8sqzW
 8iO0Yf4eKGTZxCizpcqo6CEBfqs=
X-Google-Smtp-Source: APXvYqydePYwxykYh+8rFhhUMjHqM+gGBXZEGQ9HgBhBBB8gZBssUBQF6b95aeyrt6SvCfQneJ6Vng==
X-Received: by 2002:a05:6830:11cf:: with SMTP id
 v15mr8083572otq.36.1573756089672; 
 Thu, 14 Nov 2019 10:28:09 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l20sm1948314oii.26.2019.11.14.10.28.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 10:28:09 -0800 (PST)
Date: Thu, 14 Nov 2019 12:28:08 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH] dt-bindings: crypto: Convert stm32 CRYP bindings to
 json-schema
Message-ID: <20191114182808.GA29513@bogus>
References: <20191108125244.23001-1-benjamin.gaignard@st.com>
 <20191108125244.23001-2-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108125244.23001-2-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_102813_120061_13498DF1 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.194 listed in wl.mailspike.net]
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

On Fri, 8 Nov 2019 13:52:43 +0100, Benjamin Gaignard wrote:
> Convert the STM32 CRYP binding to DT schema format using json-schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  .../devicetree/bindings/crypto/st,stm32-cryp.txt   | 19 --------
>  .../devicetree/bindings/crypto/st,stm32-cryp.yaml  | 51 ++++++++++++++++++++++
>  2 files changed, 51 insertions(+), 19 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/crypto/st,stm32-cryp.txt
>  create mode 100644 Documentation/devicetree/bindings/crypto/st,stm32-cryp.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
