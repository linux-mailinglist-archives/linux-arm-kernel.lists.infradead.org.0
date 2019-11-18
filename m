Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3717C100184
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 10:39:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V+N+0f85be/SR1xpeXrJtzrxG+G/7OoORiyhjDC/Lbw=; b=kjh4R2RwKKJ5Qr
	2RFAJFnekwmroYz5m0vnYYHpyDE4E1cYSEK9g1edUrgJojT6zN9C8KXVXQpwHVYDC7SWgHpXSEJmA
	01k7ADjtHrHCthYnhrXc5UzZuvqdWzAU1wQcBcwKmysmp0kF9Q/5K6xeCZr3bjZkvSClhBG1VLxSa
	0lLaY8iJepbxc2gCNH6hiQIx7EfwPbUXRwvItkfJoVRXycWKZAI1QNXb89uXEC0+NfsUKrbeNyecd
	5HxvUFIhoMLcOBStaJKdo8uVAMQhQjvg8qLASFOQ1t6cetgCmhX6oIe5z2HOGNV7ydTunQ0z3qSKK
	gQSTzVahM2wqX3x2gmTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWdVS-0005o1-Mg; Mon, 18 Nov 2019 09:39:38 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWdTh-00048q-TK
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 09:37:52 +0000
Received: by mail-wr1-x442.google.com with SMTP id f2so18549233wrs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 01:37:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Q0mPzKXAC37oXp0wVkV8/ys9/u7aTcSnLuWMUuY5ccw=;
 b=pEnL5y/JfRfOj2VPs0MQ3Dm3cpqhOVzzq3YSk4naex2AEYy/SLeY89R3sGnuctZItW
 BxhOnaPxdCNgbUsWYzgKqs5uERI7uJONWQf8gCeZisSfvEp5Fro370miD//0aoHX0xOf
 BGOvV8yRCtX8pxFbShH5ClZ2zACLzMspCc4WOq95oKRaQZY4u1uAbWlqdeQ9JzFuaUJg
 S+mn15qg9dQrTvcYtm3wnEZyu29s+b8FN+UZOD5DfVFQ9JhNSPmnpJq6hDcgo1afGQV/
 RSYi95GxiUyNXVc1hlSe6w49Q5GF6DrnL++1l2W0mqLKqV5mzJej2HNcphKzTTzWCREh
 CqjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q0mPzKXAC37oXp0wVkV8/ys9/u7aTcSnLuWMUuY5ccw=;
 b=GB3TyDi1LOxd39O9GbC0Jo32ZGyLmDE+kxg5gP5FABmvM0k8PrEYaQOzYBq52YGR9s
 DjN+mjUFTf2JACNXuvtA83ZXCNHPG5VBdORJvCRZxJwmfpWfLO5pb1B/JgM8NBXXYsI3
 GH9v0an+EJREw742Pj9pQFV74pR64nMcQHh76kiXuiVuFpb8FRJSxBbzHO1Z+EvfxHge
 9AMRbUXMFA0/1/QVeDlVZArXyX/WUYdbDnhhMWVxFhFCjQNXn1Uq+7bru3PAvi5QgUEi
 zbr6toK3e46Q58PLO9QrFrbBWuKHBQquCRFD2/Ig9GODbpxTqwJ3uJmYD8RjtPLMyx5Z
 1QhQ==
X-Gm-Message-State: APjAAAXS9v3YY4e5vs2pcrYXH+T8BF5GQH6/D6IXAnAjQciBPE6RcwMb
 oW1ZQg4KiJNJbbo2YOQ/0Qs=
X-Google-Smtp-Source: APXvYqxuDV4SIDq7LKd+hcWzsyqT+zaAXEO9EyFr4PnVgO9NKkGUDD24RwUvGUU9Rstz0wduFfOpBg==
X-Received: by 2002:a5d:49c4:: with SMTP id t4mr29606700wrs.226.1574069868491; 
 Mon, 18 Nov 2019 01:37:48 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id w10sm19006687wmd.26.2019.11.18.01.37.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 01:37:47 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v5 7/8] arm64: dts: allwinner: h6: Add PWM node
Date: Mon, 18 Nov 2019 10:37:26 +0100
Message-Id: <20191118093727.21899-8-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191118093727.21899-1-peron.clem@gmail.com>
References: <20191118093727.21899-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_013750_019946_450711C9 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pwm@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKQWxsd2lubmVy
IEg2IFBXTSBpcyBzaW1pbGFyIHRvIHRoYXQgaW4gQTIwIGV4Y2VwdCB0aGF0IGl0IGhhcyBhZGRp
dGlvbmFsCmJ1cyBjbG9jayBhbmQgcmVzZXQgbGluZS4KCk5vdGUgdGhhdCBmaXJzdCBQV00gY2hh
bm5lbCBpcyBjb25uZWN0ZWQgdG8gb3V0cHV0IHBpbiBhbmQgc2Vjb25kCmNoYW5uZWwgaXMgdXNl
ZCBpbnRlcm5hbGx5LCBhcyBhIGNsb2NrIHNvdXJjZSB0byBBQzIwMCBjby1wYWNrYWdlZCBjaGlw
LgpUaGlzIG1lYW5zIHRoYXQgYW55IGNvbWJpbmF0aW9uIG9mIHRoZXNlIHR3byBjaGFubmVscyBj
YW4gYmUgdXNlZCBhbmQKdGh1cyBpdCBkb2Vzbid0IG1ha2Ugc2Vuc2UgdG8gYWRkIHBpbmN0cmwg
bm9kZXMgYXQgdGhpcyBwb2ludC4KClNpZ25lZC1vZmYtYnk6IEplcm5laiBTa3JhYmVjIDxqZXJu
ZWouc2tyYWJlY0BzaW9sLm5ldD4KU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJv
bi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41
MGktaDYuZHRzaSB8IDEwICsrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2
LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQppbmRl
eCAyOTgyNDA4MWI0M2IuLjZkNGJkZTQ4OGYxNSAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290
L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9h
bGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKQEAgLTI0NSw2ICsyNDUsMTYgQEAKIAkJCXN0YXR1cyA9
ICJkaXNhYmxlZCI7CiAJCX07CiAKKwkJcHdtOiBwd21AMzAwYTAwMCB7CisJCQljb21wYXRpYmxl
ID0gImFsbHdpbm5lcixzdW41MGktaDYtcHdtIjsKKwkJCXJlZyA9IDwweDAzMDBhMDAwIDB4NDAw
PjsKKwkJCWNsb2NrcyA9IDwmb3NjMjRNPiwgPCZjY3UgQ0xLX0JVU19QV00+OworCQkJY2xvY2st
bmFtZXMgPSAibW9kIiwgImJ1cyI7CisJCQlyZXNldHMgPSA8JmNjdSBSU1RfQlVTX1BXTT47CisJ
CQkjcHdtLWNlbGxzID0gPDM+OworCQkJc3RhdHVzID0gImRpc2FibGVkIjsKKwkJfTsKKwogCQlw
aW86IHBpbmN0cmxAMzAwYjAwMCB7CiAJCQljb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41MGkt
aDYtcGluY3RybCI7CiAJCQlyZWcgPSA8MHgwMzAwYjAwMCAweDQwMD47Ci0tIAoyLjIwLjEKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
