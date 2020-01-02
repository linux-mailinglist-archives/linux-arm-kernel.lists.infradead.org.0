Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA3512E998
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 18:56:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yF8V4iufsvqjYLJGJiuB2/Fxp0oVJ5Xuu4nJxdzu2B4=; b=lWW3qcQ7+GVwqd
	/r3HIMWrF9t/uCtlBhzLK6RvGwJHaxX72+ojuPeraQPxWzCXA3QXCKGs8f+Jha8F9wheV24q2U3p+
	mOjToLUKqA2lo9CUyPAzxNQc9+ZMieMuONmfofuOrmtA67WSvp7pe2Mss6D7BQMKSp7U/R2a3tQqp
	UKu9uKSoC9Td2+PRjCBY2+MILQXv7LipjVZxbHH7jcUNdEnrfc8EmYOcKCUMnaHgRctVNUztm4gEi
	xD0RnyehnDpzbvVv3hcqAENZMX39Lhu7RKhKZJ9o20/OXfR+g3IFWtiaO0seNF8OVnnDatX93f+a+
	nV728I0Rwj4tAopRG+HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in4hU-0005ia-0B; Thu, 02 Jan 2020 17:56:00 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in4hN-0005ht-Qz
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 17:55:55 +0000
Received: by mail-qk1-x741.google.com with SMTP id a203so32303622qkc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 09:55:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=VvBGSQnAvkp/z9KIA70+zCZk+7dfOwKatcr0yFpfC/A=;
 b=XlJSSg0PEd9Gwmxem87SMKsdC8/nyuwJgJetjj+6wVGVCnKrWFyeFioR7mYgpQavrM
 e0QUGQOff54lsBTdbtLjAY0Zmbt5jVxbxXT1vFtQuK5lNshrEwoMZs03ZLhXY1uDYCS3
 pdTIs+x8Y//CNgCZvlQgQYKsUP2clxzBxg17R4GBbXXWM9etsIyhUePTVXUtcIVGnyL0
 dciGDiEHy+22i0FIpVLIyx2U0ga23gxv+VDL0hPYu5Laf2hseSFlRhnV6jwnFVWLgvgN
 3+JU/Cplv3wj4GGb1yOf+AwzY2bj+sBw3BmodXdGCcX/kP7XlX6jAE0apst0m0N6Sn2n
 kRpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=VvBGSQnAvkp/z9KIA70+zCZk+7dfOwKatcr0yFpfC/A=;
 b=FOs59SroIwU1klF/iLYC+JJaQz5WET+3OuC+yesZfUAOD2O09OBgXtZA2WCBp0KhrQ
 qp4LpIQCyhmpuroMS2fBhvoEi0qWz6j2v1n3Sfvi90nsM8lv8NhLgCZvMTrucIuJFUpR
 Y+BTfFsThgpHpPf1LolF8oA+ulOWBiMRl76qLLjqA7C6HCdmoJB23+oCYmcP9fiLh3fx
 CYfKhKBEcbCDUywBdfPk/3B4EFPLhjpb/14lKa6X8flSF6P4mlqTGxmHK8y3urkIcSO1
 QklODPeUs+LKpYpCnPmOywCbQpZxbl51HgM7HYUhtcAfPhSGZiUDPZ3pI2xSZlmHMDRz
 te3Q==
X-Gm-Message-State: APjAAAVtWKZRf5RsT6dUeVQB2fLk0jZHqeiVm2B0ROh6bukk7FO5Xg0p
 r5qGqbV1xy11Pat2XBVGR9X+wwIO+xrsY7P2uWsqhw==
X-Google-Smtp-Source: APXvYqwIJ8jhqb3Pxo1nnqStMC/FyAlTk/mLSjRyqYHHLaEk1gII8LrtnY8U8YO2gxgz8yVgYmIVIJ8eoCcUZqkXdhg=
X-Received: by 2002:a37:6255:: with SMTP id w82mr68484592qkb.330.1577987752601; 
 Thu, 02 Jan 2020 09:55:52 -0800 (PST)
MIME-Version: 1.0
References: <1577362338-28744-1-git-send-email-srinivas.neeli@xilinx.com>
 <1577362338-28744-8-git-send-email-srinivas.neeli@xilinx.com>
In-Reply-To: <1577362338-28744-8-git-send-email-srinivas.neeli@xilinx.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Thu, 2 Jan 2020 18:55:41 +0100
Message-ID: <CAMpxmJUgALt6K2m2iAtR9xhkFaDDyESpjqu11EivK-ottVuZLQ@mail.gmail.com>
Subject: Re: [PATCH 7/8] gpio: zynq: Add pmc gpio support
To: Srinivas Neeli <srinivas.neeli@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_095553_873900_0B19294E 
X-CRM114-Status: UNSURE (   7.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linus Walleij <linus.walleij@linaro.org>, shubhrajyoti.datta@xilinx.com,
 Michal Simek <michal.simek@xilinx.com>, LKML <linux-kernel@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>, git@xilinx.com,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Y3p3LiwgMjYgZ3J1IDIwMTkgbyAxMzoxMiBTcmluaXZhcyBOZWVsaSA8c3Jpbml2YXMubmVlbGlA
eGlsaW54LmNvbT4gbmFwaXNhxYIoYSk6Cj4KPiBGcm9tOiBTaHViaHJhanlvdGkgRGF0dGEgPHNo
dWJocmFqeW90aS5kYXR0YUB4aWxpbnguY29tPgo+Cj4gQWRkIFBNQyBncGlvIHN1cHBvcnQuCgpB
Z2FpbjogcGxlYXNlIHByb3ZpZGUgc29tZSBiYWNrZ3JvdW5kIG9uIHdoYXQgUE1DIGlzLgoKQmFy
dAoKPiBPbmx5IGJhbmsgMCwxLCAzIGFuZCA0IGFyZSBjb25uZWN0ZWQgdG8gdGhlIG11bHRpcGxl
eGVkIElucHV0IG91dHB1dAo+IHBpbnMuIEJhbmsgMCBhbmQgMSB0byBtaW8gYW5kIGJhbmsgMyBh
bmQgNCB0byBleHRlbmRlZCBtdWx0aXBsZXhlZCBpbnB1dAo+IG91dHB1dCBwaW5zLgo+Cj4gU2ln
bmVkLW9mZi1ieTogU2h1YmhyYWp5b3RpIERhdHRhIDxzaHViaHJhanlvdGkuZGF0dGFAeGlsaW54
LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgU2ltZWsgPG1pY2hhbC5zaW1la0B4aWxpbngu
Y29tPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
