Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4F818BDB5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 18:12:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yZLX5PxbKJGGfpyi+Qof5DzfD5B+5GC1r8xavH5jUhM=; b=EBiHX0qCn9v7Ho
	kv8n90P6er/MCqk9DlrKJFgR4cwWlnvZW04I6dx0CyMhcQ9KN8DMMTmxKJt7URRgekMhhFizPG1cd
	JHZJz8IfsFf84orimBUkpmMyf7CEolQ4hGv5TolctwboMW6FPkS8A4UhurjAkZGlF/l7QaievRphc
	+J/5+atb4QUDt8n279Jq7eoXrngTALqrcpjAfj6eJFMUVjCyX2I4oT0sIC8ng7NIRLc+eLCGLSUYp
	3hG+trcUS+Q0CAajM4BRFlM18QmUChB2wUH5c+ZwYtJ+Yjepka1lQAyQlOL4qTObIwQ/GXglHFb2j
	APMc8Ky/KVR4jUHZOK2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEyis-0004mR-9c; Thu, 19 Mar 2020 17:12:46 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEyij-0004l1-NH
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 17:12:39 +0000
Received: by mail-io1-f68.google.com with SMTP id v3so3014077iom.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 10:12:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1uRh6l5+Das1Y3n6fQwU4j/xxpeTRicxLD15NbO6tg0=;
 b=T631tVh9hohOWiZdkh6imDVCtdTCtaZnBVsFiUrAL3ndyd9m5Rv1r9X+PoNZK7UDEU
 oQBOBNMr4gYKHvfcuxrE3gIOZKedK3GCUA8xj+W/NMiTgf+Vu9yRFGgSqE170NBenVj6
 rd0OiHDtJ9ILFbpK1xv/WPPkboY8rvzhP9wzpcM/u2cwdSFK/OqbkPty2dDlrJ+wN45f
 kNVBgAJZA1drJNYP4WWR76sNEV6pAK9gTe2vAWdOrvHQ5cERo6L/GePcvGxaYgzTT00r
 D5oJBP2xP6HpvM9iegoJA2kl5GYhcA2yqR/YaXjjyv/msg2qQj2JCBcrq5UmpwvBMV6R
 uN+w==
X-Gm-Message-State: ANhLgQ1o1eCcRQ4ReNCZ6VyyAMvJe0F4rqjeUUemqo2bxMt/4UcSiWFN
 RlsBPkGy3GaF5E5S4qCwXcw/JaQ=
X-Google-Smtp-Source: ADFU+vuKqzfgjxCKo37tHMP37T6SVQAWNqhv2cJ1n9k92m0g5Fa3b4S8sTBFsnX2NLnRpxQf1jtqMg==
X-Received: by 2002:a02:bb09:: with SMTP id y9mr4239389jan.33.1584637954714;
 Thu, 19 Mar 2020 10:12:34 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id h29sm1064995ili.19.2020.03.19.10.12.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2020 10:12:34 -0700 (PDT)
Received: (nullmailer pid 17676 invoked by uid 1000);
 Thu, 19 Mar 2020 17:12:31 -0000
Date: Thu, 19 Mar 2020 11:12:31 -0600
From: Rob Herring <robh@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH] dt-bindings: iio: dac: stm32-dac: convert bindings to
 json-schema
Message-ID: <20200319171231.GA17071@bogus>
References: <1584543037-32095-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584543037-32095-1-git-send-email-fabrice.gasnier@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_101237_754245_220E1ABF 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 olivier.moysan@st.com, alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 pmeerw@pmeerw.net, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, mcoquelin.stm32@gmail.com,
 knaack.h@gmx.de, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 18 Mar 2020 15:50:37 +0100, Fabrice Gasnier wrote:
> Convert the STM32 DAC binding to DT schema format using json-schema
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> ---
>  .../devicetree/bindings/iio/dac/st,stm32-dac.txt   |  63 ------------
>  .../devicetree/bindings/iio/dac/st,stm32-dac.yaml  | 110 +++++++++++++++++++++
>  2 files changed, 110 insertions(+), 63 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/iio/dac/st,stm32-dac.txt
>  create mode 100644 Documentation/devicetree/bindings/iio/dac/st,stm32-dac.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/iio/dac/st,stm32-dac.yaml: $id: relative path/filename doesn't match actual path or filename
	expected: http://devicetree.org/schemas/iio/dac/st,stm32-dac.yaml#

See https://patchwork.ozlabs.org/patch/1257568
Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
