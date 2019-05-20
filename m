Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9231523E17
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 19:10:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qK4gBBOIXPR1TFWwh5zmE5ztGb0zjuuyKj+hOOyIH1k=; b=nYZ1yUmyJObf4s
	kz2mmLd81NdgUkcmcBy4rLWe+FjMnxByhvg1Sjsvz2R58NWlcladA4H8gGrwWtjl+pkob+jwwXHFn
	ZIO02J7v1+FHsH7Tua2Z9dr+pWgP1GbGoMy5BjG4L/EZNmiss+ojb/adBkSSVfzQlSgoJVeAV3VCj
	HzdZLdgdBwmzeUH3JzNhQIPDxIa8X3Z8uCe9bN3QE6lsNdOTSOlhQPyWYz8Ddn5dmvcWAPLmDKUk5
	3NQYP4szmzQHC0csurR8mRlwKh9tRqE7pI6sXxbDJwLNX3l/G/E436edrmClEv3pF4dvu6Q0hyDZT
	UMWGZdnDiRbg7ZWT0WiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSlnz-00028d-Ec; Mon, 20 May 2019 17:10:31 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSlnr-00026s-FM
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 17:10:25 +0000
Received: by mail-pg1-x544.google.com with SMTP id a3so7092050pgb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 10:10:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=I7O1t0HTMIayhEjL+JB+8Z7qxurHkXoWUdusDgjI/aw=;
 b=QZgNI45DOAwYaDO1iHICnzp4zHKGESb3mm7wGS2JhmkSoAYChyrynGZrvsxv2RRwFV
 O5jOc+IVUU3xphkbgMuIIJBamG/nurDaVgvwodpNwYOXcQomCmQDTu5SpbYpzcNXuD9Y
 6P2mIgfpgnkVSVjWYL6H9vtosiFubgEEcgjE0fv5qHKs5AQ0Xf1efIiGcx62oznUyjIs
 AcSLpXr98N7w+pcE0juLeZxwWhIXxSf1wCbg58+6vO2cWDwaQ0xK6eXP1kOCR7sen0Oc
 WOCF1P4/bsM5Q6CIyzvQu2h1HQp/LP4ZLD0aBF+7YIVJmDzaLvHfXNQYCew9RFUjM+DO
 +DoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=I7O1t0HTMIayhEjL+JB+8Z7qxurHkXoWUdusDgjI/aw=;
 b=HrMfOE5sUqdQwf1c6XJ+AyvjrAuuCsMMxYxiF+BRzg9u/UcSXRlvxhR9mWQi650iEK
 H8KdbTzp5E9jwhcIGWK6Ay82b6TTyN0oa6BbzM+3MfF7OFiCppFzWwt9i/tY+3qABckq
 tWPPCQHh+GwAPr3yP8REJytZIGB22UckUfW2G22CwF52Dbwpzew0s6A1sUvtFyLV/Tfc
 QY7LzVDrWnGJDjTh6lcXgT9HKTPn+EnXZeKGTeJW5MbMbswX+rlN5Ep/7Lw2o86pHpKe
 CJQoUrflGbi67zJNaFU/syOzUyYTAwBQCB5q4bWS9AJYe4ThkvtXnzPxF+AvX29QXSIv
 aYsg==
X-Gm-Message-State: APjAAAVAkfSrdMtE5E7wStO6OVxuWsaJ/OfH4KCenMckBuZu3H3rX9a3
 DC3+SxWuByLWy0UlSQ2cVe7jKA==
X-Google-Smtp-Source: APXvYqzaOlQqLS/+QC42OQ5Qr8ZY2ncGO7QbGmE1r8wBifQgCAbuNUputplZ7iTSIWjw5VjtKCNaTQ==
X-Received: by 2002:aa7:92da:: with SMTP id k26mr36518157pfa.70.1558372222724; 
 Mon, 20 May 2019 10:10:22 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:e483:1cc0:e2c2:140d])
 by smtp.googlemail.com with ESMTPSA id
 e10sm37432545pfm.137.2019.05.20.10.10.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 May 2019 10:10:22 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: amlogic: Move 'amlogic,
 meson-gx-ao-secure' binding to its own file
In-Reply-To: <draft-7hsgt9842a.fsf@baylibre.com>
References: <draft-7hsgt9842a.fsf@baylibre.com>
Date: Mon, 20 May 2019 10:10:21 -0700
Message-ID: <7hmujh832a.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_101023_514330_2DE2A854 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 Carlo Caione <carlo@caione.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Kevin Hilman <khilman@baylibre.com> writes:

> Rob Herring <robh@kernel.org> writes:
>
>> It is best practice to have 1 binding per file, so board level bindings
>> should be separate for various misc SoC bindings.
>>
>> Cc: Mark Rutland <mark.rutland@arm.com>
>> Cc: Carlo Caione <carlo@caione.org>
>> Cc: Kevin Hilman <khilman@baylibre.com>
>> Cc: devicetree@vger.kernel.org
>> Cc: linux-arm-kernel@lists.infradead.org
>> Cc: linux-amlogic@lists.infradead.org
>> Signed-off-by: Rob Herring <robh@kernel.org>
>> ---
>> It seems this one fell thru the cracks and didn't get applied.
>
> Feel free to apply directly.
>
> Acked-by: Kevin Hilman <khilman@baylibre.com>

On second that, we're going to have dependencies on that for the v5.3
cycle, so I'll queue these up.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
