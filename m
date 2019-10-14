Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AFFCD6846
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 19:19:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oOUglL+54GA3b1D37gAb/xngRpDPEoNCTj9bKZIvX3c=; b=R04f7A42muyRLu
	4QHXs7L6tF6dfHI3Kkzv/J5c9CRhMD06iQX0ToBIQzxGj0X5iFyLsfe2gIH0lL1XkIWZdwiKkONc2
	QIsogopABQh3+HeHedOuhhRMRGnLxf6/4fNM7ywohulf/xbZICPfurn1MWR5jyDfaujLyZb0stnMz
	Bv7XV5We8/HvPGe8hcqO2LYEaARcQLQO63uGfExnU+nlryEoqzjES2W9g2PrFl/qL5yBuA9mgyTzu
	bqGDeTcsKMGrhFbNBnFNUdqUmYaN0wocCyIMKJ+hx8BDGF5P6I1Gj3TsIra4UqSo+ZFg03z//WB58
	PvRRxCrvJXMvhnZat6sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK40T-0002ZP-31; Mon, 14 Oct 2019 17:19:41 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK40I-0002Ys-Ng
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 17:19:32 +0000
Received: by mail-ot1-f66.google.com with SMTP id m19so14476656otp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 10:19:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+uUeApNQ/RRi9uJOAghMByheAKVmX2xvxdgsFJpIgzI=;
 b=Meum1uVGhyl60JLSOPE0evyAoJpc1E1CRZbZn7oQ4uCnVicaPAGBU9elpQuajAyxar
 d+yWmtChCPf1CnZkGaahDDVLpO7s6JEBdCc2SYGZLc95a8ghkZ9W+HF6Rr+7RB+PtpoT
 drWR9XnxdtzCR1gyNnZt6G4ehEj6+WNqCZlfmvzRUvSZFkHV24tGof4TrCzGZ2IaXBXh
 0NAbBcmdcnKewWdts7fDC/oXkZ/+2QZG8LILHbkdGj+ev9CX92FNjrIVpOUOaLTDvaDu
 JqZF4mpo4+FCAnRdZA8Xpdte3Rx3XRiotEg+CE9a2ATLXLBESYw+EQmQViOojBeAylUN
 MQUQ==
X-Gm-Message-State: APjAAAVF/k5BIRNdy1XCtEDqSbp9/zmoi9hixBFKV+Nv3qBfPzQ97/WU
 lrsPk9fTNw/V4nh0tFukJQ==
X-Google-Smtp-Source: APXvYqwwc3TAele/wXkLIzld34hhRrtg4CXjhYEk7aGrc/Ao9TLXsgP0bWPSDHfDCTXjh05CVuGCDw==
X-Received: by 2002:a05:6830:1103:: with SMTP id
 w3mr25682147otq.312.1571073570114; 
 Mon, 14 Oct 2019 10:19:30 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v24sm5478615ote.23.2019.10.14.10.19.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 10:19:28 -0700 (PDT)
Date: Mon, 14 Oct 2019 12:19:27 -0500
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v3] dt-bindings: timer: Convert stm32 timer bindings to
 json-schema
Message-ID: <20191014171927.GA9665@bogus>
References: <20191014092316.24337-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014092316.24337-1-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_101930_786031_D7287838 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, alexandre.torgue@st.com,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 tglx@linutronix.de, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 14 Oct 2019 11:23:16 +0200, Benjamin Gaignard wrote:
> Convert the STM32 timer binding to DT schema format using json-schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
> changes in v3:
> - use (GPL-2.0-only OR BSD-2-Clause) license
> - fix identation
> - add additionalProperties: false
> 
>  .../devicetree/bindings/timer/st,stm32-timer.txt   | 22 ----------
>  .../devicetree/bindings/timer/st,stm32-timer.yaml  | 47 ++++++++++++++++++++++
>  2 files changed, 47 insertions(+), 22 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/timer/st,stm32-timer.txt
>  create mode 100644 Documentation/devicetree/bindings/timer/st,stm32-timer.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
