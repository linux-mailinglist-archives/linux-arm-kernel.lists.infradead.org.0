Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B59165B6A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 11:26:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UvCO1lFlWxR7bbLbF+S64DOqd35awIYAFyBkDYCE+H4=; b=tTu+tqXnbOzDMt
	fC/Qi8atr73FHai/fqyj7QrOizXvIycjJxrjC+AprG9qA1DE4D67Uk9tctmZX47XCfm5X5pSYAKFn
	VjFPbw1E2WdNV54H20XqtaxEijYZdhtNXoQwazRiyPx9YK7JDFLBbQFhxb443gjjCtxDNhRyNRlG4
	NpwKdBpt4Cc5UJzjqoWu7y0GdERzYYCYIOzVQZmqnUDOI2itYmeRWzTkh0vD/qL70TctcRsdynxE/
	zdq/aDFE+54L1HhJWjhUVhIN+3PwnW+lDhTM8ho003caPAKWS92N5cHM2ixt7pUktd71JQNYzZUG8
	lYa6anRhhzXTmotu9Lqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4j22-0005g0-3J; Thu, 20 Feb 2020 10:26:10 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4j1s-0005fC-Nb
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 10:26:02 +0000
Received: by mail-qk1-x744.google.com with SMTP id t83so3061815qke.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 02:25:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=1rjvByHZQlMhjuCjov0yod+UTGqrYRpU4C6ciuXo5jA=;
 b=CdzKYncWBcR3FH6IHEtYZ0S+4IOaHJ8BZumMqmbBM5KnI/rVVZtzcF95PvC9a4YLpE
 Umlu/ONx/RIa9VNI+7jEUtROC3vC37mEt7oDRUXC4e/5Q56CvkXZIpmeEPyITPBktM7r
 IpA/e4dXSUK7R4QRt79HUQgfaINm2xY/BSLeayOyZ6Jrt4HyvVappn8GF7mWsGhviR1/
 iBtjL0jEkDQFbsFzp4XqQ2dcAzTDCI9YHs1SDGurn3nNo6gv4jLJq/F/iK6DB5lOpSdH
 5wwaViz71p6RdAGz4t4ZHl5vyX58i5/HbEXkIfquHEBaVoLvCFdqYNHfPVwi3ww75gfH
 gYuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=1rjvByHZQlMhjuCjov0yod+UTGqrYRpU4C6ciuXo5jA=;
 b=WbdQT5HvbPbHNcp9UR7/wkleRPiz3zgVD/BPANlFQAWajli5de3VNFlSUM6gnodT6o
 8Y70uaWqgQezoSX7GHsFwRqr2c2BnqFH7zLiNx/lZOhAInvtUFaqXi6N504P8yPESUhQ
 rSjr8wzCkRiiuCsfdJI4/sIWEbBnaCYDDMQ+Xh76Gal5uTcmerrr/s5uhfvuzd1XeExX
 /amh0YYZNLgteSPP6N/8yh5GpNZzrxfUEX79VfxqoXbW7/mhfImaiccMNQjbOemmwDVx
 eJZk/Y1TJz211ivOcLR+qeaMdp0gN0zQEDuvsx9uDB+gbrf30S8fsQ1lFHd3uKjX7+o6
 qxzg==
X-Gm-Message-State: APjAAAVSxvNLoLzJfThFyX5UPTIJIpUyGFCkX8JV01KloezxFkRAfiJv
 5GbtQDCDP4YlEQjOTaQfCxlMf6764bER8pddNvsz6Q==
X-Google-Smtp-Source: APXvYqxR/dbvUf90qEuyfKeW+D4uBvlJHQinz1rXJBsKijjqfrR5Ujk5GurPtgBSmU/7aaiZPFsK04HuHH3vVOvHces=
X-Received: by 2002:a37:8343:: with SMTP id f64mr26249549qkd.21.1582194358643; 
 Thu, 20 Feb 2020 02:25:58 -0800 (PST)
MIME-Version: 1.0
References: <1581942793-19468-1-git-send-email-srinivas.neeli@xilinx.com>
 <1581942793-19468-3-git-send-email-srinivas.neeli@xilinx.com>
In-Reply-To: <1581942793-19468-3-git-send-email-srinivas.neeli@xilinx.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Thu, 20 Feb 2020 11:25:47 +0100
Message-ID: <CAMpxmJWi4izL5MgZ3vkE-a3e0jR3nhwUax4mSxQF-Z_r9vjLUw@mail.gmail.com>
Subject: Re: [PATCH V3 2/7] dt-bindings: gpio: Add binding for Versal gpio
To: Srinivas Neeli <srinivas.neeli@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_022600_780924_59F02E54 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

cG9uLiwgMTcgbHV0IDIwMjAgbyAxMzozMyBTcmluaXZhcyBOZWVsaSA8c3Jpbml2YXMubmVlbGlA
eGlsaW54LmNvbT4gbmFwaXNhxYIoYSk6Cj4KPiBGcm9tOiBTaHViaHJhanlvdGkgRGF0dGEgPHNo
dWJocmFqeW90aS5kYXR0YUB4aWxpbnguY29tPgo+Cj4gQWRkIGJpbmRpbmcgZm9yIFZlcnNhbCBi
aW5kaW5nLgoKUGxlYXNlIGFkZCBhIHNob3J0IG5vdGUgb24gVmVyc2FsIGhlcmUgYXMgd2VsbCAt
IGRvbid0IHdvcnJ5IGFib3V0CmR1cGxpY2F0aW5nIGNvbW1pdCBtZXNzYWdlczogd2hlbiBJIGdp
dCBibGFtZSB0aGUgbGluZSBhbmQgZ28gdG8gc2VlCnRoZSBjb21taXQgdGhhdCBpbnRyb2R1Y2Vk
IGl0LCBJIHdhbnQgdG8gZ2V0IHRoZSB3aG9sZSBwaWN0dXJlLgoKQmFydAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
