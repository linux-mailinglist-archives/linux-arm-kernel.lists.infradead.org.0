Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BAB21E6CDD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 22:50:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R7hxUklDBEkFwWhZV39YQ4x7ovmwM4X/uiskoEoVaJE=; b=aWYxRhSooLmTRU
	9/+sQcDiZjbLeLHoM7iOg2qJYVmq7lC/F13hGFDyu0LmwRT6X1adWfVq6+JSbIp1ID+kD7GOgOS5B
	KEyVt0xFTFh1Pn9Z+JUNR2nvNobtb2DF8GqnARAt1mjqqM2PzAUEqoWLVrBTZAufDjc9Dzqd1VCyE
	L++/9J9CHGWxqE1ObAnVKtDQ26TDq2XAcOIMzOT6ZRKIK99oV2g1a46xHUpkL6f9siB6O5sBNiyLi
	++pjhz+tkupRDbaoy1jjw87RYetZFHcV8m6/VYwMZPYF3pwpLnrk/r+qDj40kWXCfDYHfZsM37PaQ
	IY9SsWdsGLtd0d01sjwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jePTq-0007PO-MA; Thu, 28 May 2020 20:50:22 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jePTN-0007OS-L8
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 20:49:54 +0000
Received: by mail-il1-f195.google.com with SMTP id v11so357245ilh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 13:49:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=nSZ/8oTeGMv6mm5ev1BizJPaVqmDK8O3m6OqeHoCqSM=;
 b=AuXJVV1+vcYWJKWjUj7yiSX7XOPehNRXzN2LpS9EjTaaW+AuMuii93rF6N+YYhGFTo
 eSEvWpTcq2qp6xqfdrDSiFPneUBzunpgQS8T2NyQFwKeTV1g1JSPuhoAk6qBDUkzauxK
 sizEAKQ5oWHeq0WsV0bADIA+Ttreymrpea3whYh0EcwngS0b1KI73H3Nb6T8Wt8D+dSm
 4np9gn+4b1f1HN29A9a9IlfiIi0S4IFNa8jkX/tj7RZW538RRa6BIz6YtXpyEudjMSyo
 mdqj2DNHn8C8bw5mJtg1dwQ1fQa0mcMkWEWNUwarKI4XSEtECqh6CP39Z4Pi6+sOEP4B
 39rg==
X-Gm-Message-State: AOAM533QltsstCpMOxwsXIrknWOlugf5L3Pm1VX1GtNw1e/wR+d56o5d
 gLDjrnUBKfOKu5FvnaafVg==
X-Google-Smtp-Source: ABdhPJw7/NSMKWDXcM8J2GXfV1LVjCAv7PFbVY4HduH122XtdzecNPaZbBNJXvaB2WOxTkpJtUWWXQ==
X-Received: by 2002:a92:de02:: with SMTP id x2mr4659376ilm.267.1590698990861; 
 Thu, 28 May 2020 13:49:50 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id 129sm2825664ioy.0.2020.05.28.13.49.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 13:49:49 -0700 (PDT)
Received: (nullmailer pid 652010 invoked by uid 1000);
 Thu, 28 May 2020 20:49:47 -0000
Date: Thu, 28 May 2020 14:49:47 -0600
From: Rob Herring <robh@kernel.org>
To: dillon.minfei@gmail.com
Subject: Re: [PATCH v4 5/8] dt-bindings: display: panel: Add ilitek ili9341
 panel bindings
Message-ID: <20200528204947.GA651938@bogus>
References: <1589800165-3271-1-git-send-email-dillon.minfei@gmail.com>
 <1589800165-3271-6-git-send-email-dillon.minfei@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589800165-3271-6-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_134953_687285_5A7A9FE1 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, p.zabel@pengutronix.de, airlied@linux.ie,
 mturquette@baylibre.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-spi@vger.kernel.org, robh+dt@kernel.org, thierry.reding@gmail.com,
 broonie@kernel.org, linux-arm-kernel@lists.infradead.org, daniel@ffwll.ch,
 sboyd@kernel.org, sam@ravnborg.org, linux-clk@vger.kernel.org,
 mcoquelin.stm32@gmail.com, alexandre.torgue@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 18 May 2020 19:09:22 +0800, dillon.minfei@gmail.com wrote:
> From: dillon min <dillon.minfei@gmail.com>
> 
> Add documentation for "ilitek,ili9341" panel.
> 
> Signed-off-by: dillon min <dillon.minfei@gmail.com>
> ---
>  .../bindings/display/panel/ilitek,ili9341.yaml     | 69 ++++++++++++++++++++++
>  1 file changed, 69 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
