Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B12619E6A8
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 19:18:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XdsAMD+HumLgho1SGdghJwjObUgOvYMMnuXneXnxmhA=; b=c0v2Bx5Le9UCzX
	gXgGBOfJCQrgVfjk9c1OCeofxh9KRn2ZZKmZlnXKDaduHY5aEKmiKM10lfIQ4USw4ZHkUHEIusmgv
	v/x2P0DZCXdvQengizDCkT2bkRuWCgqGi8EwhmjjpS3WHkhfuxA3LpkjmiLoqydUPz2Qm4x+/Li3K
	+9bWJTKjS4ACYabD/7O1k60cG/YAEiwBK7ZpCQd7I0xxQMWygKOyyfn3Edzyb5zsrIXJmK4vRphB6
	85mky6IHGaybEjCqA+G84+3zoUdt+F2pZ/UQdw3Rv/qzEYVpHR0bZJpmlZgFpjduXqm4+sYyOKX1D
	fEU3JcYr+ZtBzw+q2bgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKmRC-0005bC-3F; Sat, 04 Apr 2020 17:18:30 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKmR6-0005at-Bv
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Apr 2020 17:18:25 +0000
Received: by mail-il1-f194.google.com with SMTP id r5so10598421ilq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 Apr 2020 10:18:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6/+9ql20CpFx44LIbrTXEaI2rIrP2FNLIFPT9pvv1Qs=;
 b=Eh5WuvCMNHetMO1Ko4v5z5URldCUxsObuMXt6oRZRPGeJi5PlrhXA/nHdQvH33OcAc
 tO1iuKxMTK6NY1+O3B8FNsKFH3KA6V53ZiFC1AY7n289WbzxNSHdscfM/s0/xsANkic7
 jwPpQUgdtxtmIN06/LSGqKuW998kL26W1np8BhE+shOYcU4mNdfBls4giNiJQRlgO1D/
 W1XcAOQjDOynVORXjAbEqK3ROuYTAs+gQ1GnLsKwNMOWTchJUzVBCVSaJOrKPC71Q8PX
 u529mrMkTO1U6G9dqFR6E1beb7THujHZyYrQUeUvie5EmGvsBHSr3Trr5a3l4lqfpsvi
 xrYQ==
X-Gm-Message-State: AGi0PubTBubYJ8TXgK/IVV/z+HENWQpfFOk2/wPyHbfDjGf9X0Np2wwi
 mFbTwEPFOUAB1KzQNQgy+A==
X-Google-Smtp-Source: APiQypIzCX8GwLPGwwKuqPKkuY3KZcZx+/fEOhsdfxnj62kPmcdX91ySH0xxjFk/0PA6YlV8wtmF0A==
X-Received: by 2002:a92:d347:: with SMTP id a7mr14714839ilh.289.1586020703682; 
 Sat, 04 Apr 2020 10:18:23 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id h24sm3416997iog.29.2020.04.04.10.18.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Apr 2020 10:18:23 -0700 (PDT)
Received: (nullmailer pid 24101 invoked by uid 1000);
 Sat, 04 Apr 2020 17:18:20 -0000
Date: Sat, 4 Apr 2020 11:18:20 -0600
From: Rob Herring <robh@kernel.org>
To: Alain Volmat <alain.volmat@st.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: i2c: i2c-stm32f7: allow
 clock-frequency range
Message-ID: <20200404171820.GA24040@bogus>
References: <1585226661-26262-1-git-send-email-alain.volmat@st.com>
 <1585226661-26262-2-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1585226661-26262-2-git-send-email-alain.volmat@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_101824_407032_01583351 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 wsa@the-dreams.de, linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com,
 alain.volmat@st.com, robh+dt@kernel.org, linux-i2c@vger.kernel.org,
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 26 Mar 2020 13:44:20 +0100, Alain Volmat wrote:
> For STM32F7, STM32H7 and STM32MP1 SoCs, if timing parameters
> match, the bus clock frequency can be from 1Hz to 1MHz.
> 
> Signed-off-by: Alain Volmat <alain.volmat@st.com>
> ---
> v2: identical to v1
> 
>  Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
