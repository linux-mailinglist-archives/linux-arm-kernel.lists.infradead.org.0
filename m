Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F28D6832
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 19:17:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VuV3Adtr9Z4AOPgjOz8iFS7jtN5Zzx/pB1h1HfMacm8=; b=UpFni5RNe9usuY
	f9BeEODGar1uMarY8VXAr1bWsgfu4enoPwiUiF0uiM5o05EUcUXgmn1+J4p/dirQBo75v5HWXqMMT
	OVOoqP7jPIBDcf69ShLSHIXHgu0gkhhgJY7+hiU+hPr8XYi+LVCPHQevx7qJwMqjb4ycbOA/FdVZ9
	L+IzVk82jldlCjZmWp3QOg3D5teglZgZkb8XwOQeAmeynjIhW23kqMIm9vRf8ZmSEjU9U40cCZfdU
	GoOqhJfi3cI1G5xwFMfMZKEispZ50EYHOemGvHigMsmYkpR6ECgy7sL5rvSqlA/FV5CHZV7mCEa5q
	Cnl/CH0AwSIfURxCTSzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK3yS-0001j8-5I; Mon, 14 Oct 2019 17:17:36 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK3yK-0001ik-CQ
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 17:17:29 +0000
Received: by mail-oi1-f193.google.com with SMTP id w144so14370511oia.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 10:17:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+b0QR5MF7DVCOWcWE3GZU/teF1mt8LRV+r1yfAkDfws=;
 b=ra+AF9zQh1j4y5qlcE7o2Dl4BM/UVMgSeqtOtRAsDGhs2nTn8HCQj68HpXTeaUdoe+
 vvfypgGbYgh8K4pgzlYX6VDR2umRZFwwpO1hR/Og2kjaHcNBqfZ+uwCVYAVYxk+yQ36+
 8oMFfl12A4KsPd+VRhScJyhuLjpr4bEpYXFUcjbNPJ8aXtdVSiVRWk2faiKkyMnDrosn
 2K+9ovpJ2QDCqhzJpezUkWCVBftcdpzH0I5rdj8JubLzX0rHHdVemQNY6/DxhnYOh49J
 oO2DrBvNCPWEd1mkeXYD7HvxKakm/korZPNwnAPFg+tNW2xGGM2d2RrcYQE7BBwGUcC/
 xGFA==
X-Gm-Message-State: APjAAAX1iFNstY2x+yCFZMhwkSPzoT0QLKPzASNgtc0snTgamTAnrR9U
 x5Pspmgv4tcEKMBUlF+rlg==
X-Google-Smtp-Source: APXvYqwYipBsJ3yRLmNQwqolPY8YtV2dTSLL7DuXyoSS8Rs5Z+4QzavFZ+eAv1k7qSeBpao+RCMibA==
X-Received: by 2002:aca:d44e:: with SMTP id l75mr25527685oig.44.1571073447359; 
 Mon, 14 Oct 2019 10:17:27 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n127sm5749817oia.0.2019.10.14.10.17.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 10:17:26 -0700 (PDT)
Date: Mon, 14 Oct 2019 12:17:26 -0500
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v3] dt-bindings: media: Convert stm32 cec bindings to
 json-schema
Message-ID: <20191014171726.GA5625@bogus>
References: <20191014092021.24020-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014092021.24020-1-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_101728_423208_7F50F0E8 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 philippe.cornu@st.com, linux-kernel@vger.kernel.org, yannick.fertre@st.com,
 robh+dt@kernel.org, Benjamin Gaignard <benjamin.gaignard@st.com>,
 hugues.fruchet@st.com, mchehab@kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 14 Oct 2019 11:20:20 +0200, Benjamin Gaignard wrote:
> Convert the STM32 cec binding to DT schema format using json-schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
> changes in v3:
> - use (GPL-2.0-only OR BSD-2-Clause) license
> 
> changes in v2:
> - use BSD-2-Clause license
> - add additionalProperties: false
> - remove pinctrl-names and pinctrl-[0-9]
> 
>  .../devicetree/bindings/media/st,stm32-cec.txt     | 19 --------
>  .../devicetree/bindings/media/st,stm32-cec.yaml    | 54 ++++++++++++++++++++++
>  2 files changed, 54 insertions(+), 19 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/media/st,stm32-cec.txt
>  create mode 100644 Documentation/devicetree/bindings/media/st,stm32-cec.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
