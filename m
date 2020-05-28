Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F8F1E53F8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 04:34:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/2430UTSVW6l+MVFh0bcLXPJzouGBY2VYy9E5kURpBc=; b=FUVk/sY3j9oG3v
	9SEyMs0QWt1QN8qc7o91HDkKpqDw2VQj4ZEF2htkte4lo2NfAQyHs5qsrPxKcGIHQMpxPpuebjlBq
	G5h8EXN0lnJS5qAiy8/4f3ht5gctHGoXHZ1zSSps7AA24mc59EkzNSk1xvlm4HvLxnw9SLXRRR3Rs
	sNk3R4hCAabfpjrK0ij6vzeS0YDI/r8J7NQ5DA1EYa7zo29gMsdW+lGGNjmO9ySGiDnyIxwwjmK5Z
	Gi/684NqBcAV/M6M5Zn/F419hhA4njS62mHKYTbxhpwvy9H03qvvrRtoyMeRDzoB6L9fpZ9W7Vmof
	nj/kHpRJ5KX4LUJhl5dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je8NJ-0004ZC-PE; Thu, 28 May 2020 02:34:29 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je8N7-0004Yh-Df
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 02:34:18 +0000
Received: by mail-io1-f66.google.com with SMTP id d7so28414153ioq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 19:34:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=kqF76bpS0hFEAXdkTHSZ3YXr22hZc22+rys0SA3QMPk=;
 b=G7KAMFsIzIzcGl2STZYEuYz/izgQgSrZfztU0/1YBXiABnUPM9nq40KKTKs+sQnSdf
 8Z04D77imfGm1cbUGOhcU9BoSlzWKnVooiJj3sUiT3cYCLrBeTIFgbz+flbuYcQhP/7Q
 bOdVEIuos8s/BA70JCmKbNF1ThLEh7G5PeHBs8DkFd9dTeNzqgKAreBL6vCHR2yFy5xe
 xfsfzbiO+yj8IrN+hYSB2qghn3swIqXZTnW1QTo4eaJr66hvhSROO8fnxtzed7lJr0x2
 x5T+928HRFbDMXOJxsWEAn+90UYXfkzqSi4TbQ9dxNrS/0CwOYve+mki3mNfzym6x2/2
 Pqvg==
X-Gm-Message-State: AOAM530ckPo1u8I/yc6XIvZIDrXKzygq2iOgK7wbcs2IV7BE3tcUdf3c
 bRWbWVv6LmvMy00W7QlciQ==
X-Google-Smtp-Source: ABdhPJzF++cIcTDH0TOkYkCFPm5c2j8QHiBDHdUfgKNUuUgtAY/Z7RRWm7F8UYPlEkwmgEQHVbZuww==
X-Received: by 2002:a6b:7017:: with SMTP id l23mr718088ioc.140.1590633256643; 
 Wed, 27 May 2020 19:34:16 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id y12sm2669938ilk.16.2020.05.27.19.34.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 19:34:16 -0700 (PDT)
Received: (nullmailer pid 3250304 invoked by uid 1000);
 Thu, 28 May 2020 02:34:14 -0000
Date: Wed, 27 May 2020 20:34:14 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH 14/15] dt-bindings: pinctrl: stm32: Add missing
 interrupts property
Message-ID: <20200528023414.GA3250195@bogus>
References: <20200513145935.22493-1-benjamin.gaignard@st.com>
 <20200513145935.22493-15-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513145935.22493-15-benjamin.gaignard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_193417_460456_91BFD41C 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, alexandre.torgue@st.com,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 13 May 2020 16:59:34 +0200, Benjamin Gaignard wrote:
> Driver use interrupt-parent field so update the bindings to allow it.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
