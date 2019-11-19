Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2136D102B3E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 18:55:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V+N+0f85be/SR1xpeXrJtzrxG+G/7OoORiyhjDC/Lbw=; b=qf2LYlVXB5GmuE
	eYg6VYInBjSoXS1x0MPtoBHXQrwuWPB0iLi+HLJzApcbUQxu9E8S/r+//sBj5oFRY+y2Pe4y16uc7
	fJT3JS+bFTOjcN+h0mLarNxWQXD9rFe/SWeODrQ4S6C0oyQcV0Tzfn9GzI8G5JobkT9zfrDG9e8TW
	vt1xFEQbpVenXqQva2UpGTJGwDiFvo2CLIpzt5UVg4RIBDHibW5vIa69V1qaI5p9Wvr/6cJxuL0yH
	E3npsPmOnuqJL17+vSSDuL87X3E3F/LNHyYTTiyJ6SpL9T92FhosW/aSquFSAzcexJHAIg0W1SVHA
	STfye1Ntdx7FxPXSxbCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX7j8-0000tr-U8; Tue, 19 Nov 2019 17:55:46 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX7gx-0007Jj-FC
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 17:53:33 +0000
Received: by mail-wr1-x442.google.com with SMTP id n1so24919440wra.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 09:53:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Q0mPzKXAC37oXp0wVkV8/ys9/u7aTcSnLuWMUuY5ccw=;
 b=kX2xzYkOJcey0IukBXgQckcOBqFfeKMPv7YciY4a3L0doXl5qmk0A2usdXyKAJIgZ0
 7eNa0NiVdsNwe5PsQcg/JLjb7hMqUj+611GewB5jwT9ULmoA8Bdl/5D+O3BXxlXGnOFj
 WO3IHhcSyZMcNGYYF1kcr1czchvuFfF8Xh6GsBkkCTrtyyBQMqCkTdcQuXtF7DACJkvq
 4/Q5Tn0uOlIETPi6UJ1atg6uty8SQhHJxAH1+9Howsr7fRttG/ri4mdKX8xrSWq249S8
 Da8kOFKoOLLvRgnOnTJkmvhgDWXuvqNP0o/UoHtROWRKubHpL79tewAs2qJhmr12mSQz
 GORw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q0mPzKXAC37oXp0wVkV8/ys9/u7aTcSnLuWMUuY5ccw=;
 b=mfMHbW6kAxiZGYZozc0+58i2fEuqUU2LzG0KavYaEvSuE+3HTEH7xva+CLBWBnCbRS
 ONlzM/WMtwtJXEEwBDu2jC6e4DaQysD12unhAhL1GKVOH6XwPBWgz6tG1Wd+WmU6FLIa
 9nK+m5Eb3U1HAszh2w/FuA0hUXIezFVz0xNtuaTYUPfd6RtR+ixlYAzeHhLhIDmEJ3PN
 iSTDFm29OfNciyRAFWjaQEmdL6azN473Zj5vXNHbDOIgCxoTQ1gHh9OVtagxFbC8ewj/
 aQIob6YDp6FCQg2VUlrqFTJCbsHAMjUJ02rLbDF+PXlm+y3kJ/i4AT0T36ZGTRjBdxEA
 KGrw==
X-Gm-Message-State: APjAAAXB7qyTvzHXR0ZQbxvr/g2SNf1OExM9y2Qop9wz1lSWiCpOvRac
 PjtZ7+e4FdBHFaNAPTePUi4=
X-Google-Smtp-Source: APXvYqzFlw39pjo+DqL/WXfkMNWpQBCjd95PTn5lbA4E2SEiaWGk7919C/2iTa87tf1G8RE9zuXazg==
X-Received: by 2002:a5d:5227:: with SMTP id i7mr38288820wra.277.1574186009397; 
 Tue, 19 Nov 2019 09:53:29 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id l13sm3772618wmh.12.2019.11.19.09.53.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 09:53:28 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v7 7/8] arm64: dts: allwinner: h6: Add PWM node
Date: Tue, 19 Nov 2019 18:53:18 +0100
Message-Id: <20191119175319.16561-8-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191119175319.16561-1-peron.clem@gmail.com>
References: <20191119175319.16561-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_095331_600826_8F69DEBE 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
