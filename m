Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5A5716CA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 13:16:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=73jo+Q9w7654J0K5JbdaMZ2ShZXcPXwGLRMQ3nJhCYA=; b=MXDrDeD5ABPR/n
	t/WgPl4YXMIQUrhv3tn1HzJ61LuSXiizrhKrGwAsTXgMLb+aWu3t2j5/7YDF0Q/vqBANW92DkgIm5
	EgEF4OGEAJeJk/91qXZ0eTqY/eFY9yHKF0wCn6N2vBAx4LQCzsKngJztlQfsiMn/PsGMx0EJ+wN9g
	821S8ISzLeU9ZvB0fiF9y8/xPtSX8wlTniHHGszUGnocnU/qY65izdS013vIYp5Flob7UzdkX+eVX
	q/C88XFvd6okurA+oR/hJwNTucLZYWbB0Jb5LzlymgtyvUYvdnFDg5MeZNfOt0tnGXGHJzwTEMpFF
	qrnt1GiuffQ1+lRiCb9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpsmW-0004p7-Cr; Tue, 23 Jul 2019 11:16:32 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpsmD-0004nn-FA
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 11:16:14 +0000
Received: by mail-lf1-x143.google.com with SMTP id b29so21822313lfq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 04:16:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version:content-transfer-encoding;
 bh=uWLrxdB1YlL1e2yILO6RKcVIPzmT+Y8FCjuyUQsFapw=;
 b=A3pVnUnVpzwovSwDrm+a8OLwwKS+QU9e/Cvpit+/NfXEElXL82NrIC1Xv7vplT2g7q
 1A3m/Tm6bv23Wf4x8b6Gyb8qGGETYqu1E8Pw8L7N0XR0PIewVkR8FOqWgbM25RvZgs3F
 wCG6CdP3NnJcZRWGGdjssi649RFMJYu2UlYBO8p6pdcmJqot2qGu0mC4CK7zKXbZfr9J
 hIqiHKlUOyhjjnpm67YEX+DWGiBmFRYuUi2rhk3nibw1eO3iBhijTqskIKWY/qYyHXxR
 GzaZoYXKftfBtCkgLAWbe/D9ysUlPUTrKgbUGCiBW+XTlumPwisxfqA/h7YcVS0P68Ao
 6YqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version:content-transfer-encoding;
 bh=uWLrxdB1YlL1e2yILO6RKcVIPzmT+Y8FCjuyUQsFapw=;
 b=ohPtHtANbPyHEi1RVF30quYTKVAheDKXSnnSF3Jq7M4MaLdh25MDZUwnEOWbbpfGno
 1nfEj1TD7P1H2lwKW8GoRnc0LPgv2WwZj7xrG4h2u2IqLkAwxlM3W9qxiCLpaxk08cN8
 BqOHDyxN+UVWNN+bgialXk+95XZPhAQ9834OYrfg6Gh46p2ri2JoLBTC41bntTEA2VOT
 Rtk2nOm7zHeSYchOAYo42mJYvOIgrIa3+ew8YFm1LX58AsXlxWGSU6fUiAGhKCfPckx+
 WiaY8zaaEKS+F6bi2D69E8sqaKn7k0P6NdygLl1NHZ6IduEx+1TRM0ys2gctnETDg0Q4
 1KpQ==
X-Gm-Message-State: APjAAAV57zfNr6RSRvXseS062qZJcCavwV9C/ITlWER9ENpN/42nEZcW
 UMXv4IDnNDs7joFCMBZ0OYY=
X-Google-Smtp-Source: APXvYqws8VXn9UlrFkCScVrd/Ljm5RWIohBgoNuqABIXkTQJLxsYj2xrhuC95qkvGa/TTaDrTfzDeg==
X-Received: by 2002:ac2:51a3:: with SMTP id f3mr7266804lfk.94.1563880571771;
 Tue, 23 Jul 2019 04:16:11 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id t63sm7929211lje.65.2019.07.23.04.16.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jul 2019 04:16:11 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v6 2/3] serial: imx: set_mctrl(): correctly restore
 autoRTS state
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1563823331-5629-1-git-send-email-sorganov@gmail.com>
 <1563823331-5629-3-git-send-email-sorganov@gmail.com>
 <20190722202406.hr74mg64sxoovah7@pengutronix.de>
 <87h87d1509.fsf@osv.gnss.ru>
 <20190723094902.r7v5wzu4lkicrs3o@pengutronix.de>
Date: Tue, 23 Jul 2019 14:16:09 +0300
In-Reply-To: <20190723094902.r7v5wzu4lkicrs3o@pengutronix.de> ("Uwe
 \=\?utf-8\?Q\?Kleine-K\=C3\=B6nig\=22's\?\= message of "Tue,
 23 Jul 2019 11:49:02 +0200")
Message-ID: <87muh5ypae.fsf@osv.gnss.ru>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_041613_538455_3620AC19 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-serial@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JpdGVz
OgoKPiBPbiBUdWUsIEp1bCAyMywgMjAxOSBhdCAxMjoyMDozOFBNICswMzAwLCBTZXJnZXkgT3Jn
YW5vdiB3cm90ZToKPj4gVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRy
b25peC5kZT4gd3JpdGVzOgo+PiAKPj4gPiBPbiBNb24sIEp1bCAyMiwgMjAxOSBhdCAxMDoyMjox
MFBNICswMzAwLCBTZXJnZXkgT3JnYW5vdiB3cm90ZToKPj4gPj4gaW14X3VhcnRfc2V0X21jdHJs
KCkgaGFwcGVuZWQgdG8gc2V0IFVDUjJfQ1RTQyBiaXQgd2hlbmV2ZXIgVElPQ01fUlRTCj4+ID4+
IHdhcyBzZXQsIG5vIG1hdHRlciBpZiBSVFMvQ1RTIGhhbmRzaGFrZSBpcyBlbmFibGVkIG9yIG5v
dC4gTm93IGZpeGVkIGJ5Cj4+ID4+IHR1cm5pbmcgaGFuZHNoYWtlIG9uIG9ubHkgd2hlbiBDUlRT
Q1RTIGJpdCBmb3IgdGhlIHBvcnQgaXMgc2V0Lgo+PiA+Pgo+PiA+PiBBY2tlZC1ieTogVXdlIEts
ZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KPgo+IE9oLCB5b3Ug
YWRkZWQgbXkgQWNrIGZvciBwYXRjaGVzIDIgYW5kIDMsIHRvbywgZXZlbiBiZWZvcmUgSSBsb29r
ZWQKPiBhZ2FpbiBvbiB0aG9zZSA6LXwKCk9vcHMsIEkgdGhvdWdodCB5b3UndmUgbG9va2VkIGF0
IGFsbCAzIGJlZm9yZSBzdGFydGluZyB0byBjb21tZW50LgoKLS0gU2VyZ2V5CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
