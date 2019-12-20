Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C27128545
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 23:55:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aAiSlwJw9TpIfgtX11e3AwbOU7Qem6YfDr/RaSFP7F0=; b=DIzhjQv/dhgVYx
	Ui7pRfXAqbroa+lKmCFtcC1gSZbuhP+chBiGjgrg+PP9xdVJGjZFT6VTR/sLALb/zemNn1y2EjIsc
	81VuHTC87m8GATY3b7H11PrYisooajdRzalzhousnuvPqlnNLv1bJZ1iyVWd837Zd/fv+6W2lzm/7
	QjKvIpp6z6SlSj+9VEp5YYL9zWC0Vsz7SZmA6Be6VBc4XOACKf5osabeRFWgMpjkC2dzwQ732yqqy
	HwC1+TWdwWJoVLaNk270exnkwHYnTE+zTslaTsdnNJ7CygQ7DdK/N94gk49Jk4d9Qb1Q6URd0OeBo
	wne9JgaXjVUo2xsquysQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiRAi-00049d-Ct; Fri, 20 Dec 2019 22:55:00 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiRAY-000499-EE
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 22:54:51 +0000
Received: by mail-io1-f67.google.com with SMTP id k24so2285041ioc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Dec 2019 14:54:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=N6aXh/oY7lMy+cARmMvGPpZJvUooMcIfU6lzBw92zjc=;
 b=cfSwJFiIC8Y+eu2UeoVruxOaASpjiy8wSFW3JxlTRGxveGZSh2uO9jlCqA4roJq4dA
 N2U9mchKF6Z8xFdQpapPPHzWhjWLafyKIcYp6tkF8/dgX4vu1RgqsdBGwSLFENSqiM4q
 wUuwQJPgYNFa/u9ULrsGlbJ7gwCCXCJ4Nt0cMNQ650XEftacQa04oTLYCQru6D68hB13
 Fz+jvTIp/b4IOmme5eWeLNAvJ/gtjdfIthUzLxAl1YeDV971hsJ0k5LspIyFTLjLtULw
 AoYfv9NjRHrEpWZSz+pfqP6lrZxk+GhTqiRtJtP/QRZJxGOaH+e3SeIwBX6BGlX9U2RI
 MoOg==
X-Gm-Message-State: APjAAAU/TrZwsDKHFz9X0CPem50iU5xFqLQuSOSwbamBN9Vx5mnINlwS
 mFSakUEHztvoLv63qkYSwA==
X-Google-Smtp-Source: APXvYqxRHv3mavUCCTrXPMpUhFxucuGGurQ6Fm6MRXBtA0U0dF6vAMO9RsEqh8V50CJdUZic7aVDsg==
X-Received: by 2002:a02:8817:: with SMTP id r23mr14536778jai.120.1576882489464; 
 Fri, 20 Dec 2019 14:54:49 -0800 (PST)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id z15sm5471450ill.20.2019.12.20.14.54.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Dec 2019 14:54:48 -0800 (PST)
Date: Fri, 20 Dec 2019 15:54:48 -0700
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH 1/3] dt-bindings: nvmem: Convert STM32 ROMEM to json-schema
Message-ID: <20191220225448.GA5275@bogus>
References: <20191219144117.21527-1-benjamin.gaignard@st.com>
 <20191219144117.21527-2-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191219144117.21527-2-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_145450_475163_287512A4 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
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
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 srinivas.kandagatla@linaro.org, mcoquelin.stm32@gmail.com,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 19 Dec 2019 15:41:15 +0100, Benjamin Gaignard wrote:
> Convert the STM32 ROMEM binding to DT schema format using json-schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  .../devicetree/bindings/nvmem/st,stm32-romem.txt   | 31 ---------------
>  .../devicetree/bindings/nvmem/st,stm32-romem.yaml  | 46 ++++++++++++++++++++++
>  2 files changed, 46 insertions(+), 31 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/nvmem/st,stm32-romem.txt
>  create mode 100644 Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
