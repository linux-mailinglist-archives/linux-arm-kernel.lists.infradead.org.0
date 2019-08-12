Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE7F8973E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 08:37:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7eldCQSeMpV5dfxHlsUv9AKbywr8yMp4906cuEC+uio=; b=QcYuVKuL+gg/nX
	l8zppe8/hktRZeoadQIyyE/f/mO4SWj1nH6oG5kojzljBxKAwipF9Y7XV90gczhFAqiuTh12cVzFa
	pqyvWDLT9ljzhuFGiPQ6Lrlhu3HtHOkVHaBUcLvPlyeDVQE9xOi1SVWrwvv/f8D+rjDGrpmDToMeh
	er2zG5ITCruY23HX/fWdwCIEa8nrPiPafO5Z7WElBoN4rJdaNbF2tM7QLemnC+YtWZVS1bncqqqZC
	BaISj2hW1Sx00Z69zP8frNqRnlfoIaqzJ1Y0+zBsr9bJetn/vEiDAwJhXIJRLNeYsrJTZvlNEyuCk
	IFe/o+v87/cMZ+NPbgxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx3xe-0001tz-Ge; Mon, 12 Aug 2019 06:37:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx3xQ-0001tg-UT
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 06:37:30 +0000
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
 [209.85.128.46])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 20ADB216F4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 06:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565591848;
 bh=yzB5zh4Nx6+UzoV/qKu39N7ca/NcQkTP25F/oH/DAUs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=n8dhDwk/RXQ1MwkksvGZU6TTH/09lZzwQO/+QAqS71qES/V2mrf3enUCR0KuXMYTG
 P7N3WK1cXS9Aqh44AufGcskqoGprkNyZ71HvrEAGOZNfvO0OW9+IJFAD0SQHt4Njbc
 UM9eyQBSDsv1LB72IoMLne19iQU8aRP+aNxcCCcs=
Received: by mail-wm1-f46.google.com with SMTP id s3so11087978wms.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 11 Aug 2019 23:37:28 -0700 (PDT)
X-Gm-Message-State: APjAAAWkDcyLIOBCO7TxpXtHDexDfJrut0iAYsVSmdCzv/yXIhjMevKy
 58lCmoKU2h/XviyTA6Vo164eRIEjyju1NFaWfEQ=
X-Google-Smtp-Source: APXvYqwCMmZLThLs+ABWEFDndGaEubz/Nt5ZO+lSRkNAUIHiANERBPLWnIFyXv7U/9+AyVUfzIsZIZwRnc0MCDOeMeU=
X-Received: by 2002:a7b:c051:: with SMTP id u17mr25235520wmc.25.1565591846502; 
 Sun, 11 Aug 2019 23:37:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190811203144.5999-1-peron.clem@gmail.com>
 <20190811203144.5999-4-peron.clem@gmail.com>
In-Reply-To: <20190811203144.5999-4-peron.clem@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 12 Aug 2019 14:37:15 +0800
X-Gmail-Original-Message-ID: <CAGb2v64L0VNdb=b64N4CTNT9DBYSZO8wGr2SWDiwuvYp0CNEzg@mail.gmail.com>
Message-ID: <CAGb2v64L0VNdb=b64N4CTNT9DBYSZO8wGr2SWDiwuvYp0CNEzg@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v5 3/3] arm64: defconfig: Enable Sun4i SPDIF
 module
To: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_233729_003876_74026CF9 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBBdWcgMTIsIDIwMTkgYXQgNDozMiBBTSBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNs
ZW1AZ21haWwuY29tPiB3cm90ZToKPgo+IEFsbHdpbm5lciBBNjQgYW5kIEg2IHVzZSB0aGUgU3Vu
NGkgU1BESUYgZHJpdmVyLgo+Cj4gRW5hYmxlIHRoaXMgdG8gYWxsb3cgYSBwcm9wZXIgc3VwcG9y
dC4KPgo+IFNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5j
b20+CgpBcHBsaWVkLiBUaGFua3MuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
