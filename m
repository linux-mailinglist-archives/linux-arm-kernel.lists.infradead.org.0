Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0CE102B29
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 18:54:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7s8rcjl6cNwJzasiHym1BFpkW9oLV5/gQHIU+s/nYwQ=; b=o8f+xylUdoLHQX
	tXgJao3YLQXQdXwSijy9xtGWSdNbhbYcYPoEf9kGryp8ITkQdbYU8Otz+b7mhRWEMT54DGt/qAiNf
	u1Ol8OoBYjgcBuSJvR19wMZAH2JJ5oAoEoKGJEhyG1zf+WKj/EcxpTbuRi8PAd3PktVZ5g6EYTTd8
	aSgJPE5hkbcJzjvQRJ8BIIviZm/B7JKq0vAD+0196RD44DfdOpkqnU30hTWTiR6zabum3yvkGMpIF
	zpXsgAw7Mv5x9q9XC3FG+Qm8B7Jf14K5lKDS3OQ7p4QijT8VFwL/PCcy7cQfxSA++wrQ5hZxet8b3
	wjiFNsDUA0Fcjh41cGTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX7hV-0007WE-4e; Tue, 19 Nov 2019 17:54:05 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX7gt-0007H6-9D
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 17:53:28 +0000
Received: by mail-wr1-x432.google.com with SMTP id z10so24925548wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 09:53:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KpxeRwM+qEoa4VAc9BPhZpNvjuA7mG+/4K8rmEaY6mQ=;
 b=bx22B9591gBTbNsaJPnRIhrdB/HobDRSuf8N/+RQ9vfgk//8OYwdPjFEWXeCbw2el7
 OtR8xn3BePNX7Aa1zV/8zUU2IU8jcimexfTHG1xPtdoHp4pTcd11hdJZbNeiKX23TKcI
 opTob0wiEguEjhHWaxkF8u7gvO7xeD+kMS6mSGyN4Ul//IuNFsWSM1b0ktJ9i6HcAA8L
 fQcG2ljYoL/j0baD5omgDh3BD4BKgLIVlOfuwDbqyP7Gyx7xSOlwlUDv/EVI0S85hoS/
 NvKqjMIxsZUU2mF4uszX1Y4515VQ+C/T4q7+pKYVBWXUM5YUXVhjbeKFoUOJ+DFMD3C3
 ZxFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KpxeRwM+qEoa4VAc9BPhZpNvjuA7mG+/4K8rmEaY6mQ=;
 b=p5l177ifUuvv43xvL0NdS3bqBx4iw5wkM5PnCKOQYUVb01/uPUjFrWt+Tn2a2V590w
 S1FC+g3p3Rq46C4i05yfOg4CAjvNaQouF/WUYMsStCIKA06mN9r5dn5O8uVZOZLS0Fue
 nS9OdEsfyC8B+Y0dS/AnploUezSFfvykwm6kk7ZqcgtCSkkpTWFo4nKjeGRlozUnmFWm
 JTddqSlAprJ3C1Z3HRXSF9dPnCALJrV4EtDKz0vwfhTt+JQOGOWkRh8lkbYjIptCnOO8
 kqnk4tntXCkZP6LhorvpMtvKcoull/M+UTAKApPu9zKw/wgjt6Jbg9ObAHPAhSk9vHvx
 yaPA==
X-Gm-Message-State: APjAAAU0XEeTNOJg9ysC8ofRHJ5Y4wLqqMiAp+/d//9QURdBtBeGDKZE
 Lr7XZRRMfWAW8nMCCiDsCI0=
X-Google-Smtp-Source: APXvYqzRPud+LGIWs0JP7TgLZFqPoXTmaPDi4j3Bz5kBu2ryyj8/BvNdjOcJSRbKl1ehPz/aD1c7ng==
X-Received: by 2002:a5d:51c8:: with SMTP id n8mr38156093wrv.302.1574186005316; 
 Tue, 19 Nov 2019 09:53:25 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id l13sm3772618wmh.12.2019.11.19.09.53.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 09:53:24 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v7 1/8] dt-bindings: pwm: allwinner: Add H6 PWM description
Date: Tue, 19 Nov 2019 18:53:12 +0100
Message-Id: <20191119175319.16561-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191119175319.16561-1-peron.clem@gmail.com>
References: <20191119175319.16561-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_095327_321874_206175CE 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:432 listed in]
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
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKSDYgUFdNIGJs
b2NrIGlzIGJhc2ljYWxseSB0aGUgc2FtZSBhcyBBMjAgUFdNLCBleGNlcHQgdGhhdCBpdCBhbHNv
IGhhcwpidXMgY2xvY2sgYW5kIHJlc2V0IGxpbmUgd2hpY2ggbmVlZHMgdG8gYmUgaGFuZGxlZCBh
Y2NvcmRpbmdseS4KCkV4cGFuZCBBbGx3aW5uZXIgUFdNIGJpbmRpbmcgd2l0aCBINiBQV00gc3Bl
Y2lmaWNzLgoKU2lnbmVkLW9mZi1ieTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNp
b2wubmV0PgpSZXZpZXdlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KU2lnbmVk
LW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0tCiAuLi4v
YmluZGluZ3MvcHdtL2FsbHdpbm5lcixzdW40aS1hMTAtcHdtLnlhbWwgfCA0OCArKysrKysrKysr
KysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNDggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wd20vYWxsd2lubmVyLHN1bjRpLWEx
MC1wd20ueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wd20vYWxsd2lu
bmVyLHN1bjRpLWExMC1wd20ueWFtbAppbmRleCAwYWM1MmY4M2E1OGMuLmE3ZGMxOWZjMzQ3YSAx
MDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9hbGx3aW5u
ZXIsc3VuNGktYTEwLXB3bS55YW1sCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9wd20vYWxsd2lubmVyLHN1bjRpLWExMC1wd20ueWFtbApAQCAtMzAsMTMgKzMwLDUxIEBA
IHByb3BlcnRpZXM6CiAgICAgICAtIGl0ZW1zOgogICAgICAgICAgIC0gY29uc3Q6IGFsbHdpbm5l
cixzdW41MGktaDUtcHdtCiAgICAgICAgICAgLSBjb25zdDogYWxsd2lubmVyLHN1bjVpLWExMy1w
d20KKyAgICAgIC0gY29uc3Q6IGFsbHdpbm5lcixzdW41MGktaDYtcHdtCiAKICAgcmVnOgogICAg
IG1heEl0ZW1zOiAxCiAKICAgY2xvY2tzOgorICAgIG1pbkl0ZW1zOiAxCisgICAgbWF4SXRlbXM6
IDIKKyAgICBpdGVtczoKKyAgICAgIC0gZGVzY3JpcHRpb246IE1vZHVsZSBDbG9jaworICAgICAg
LSBkZXNjcmlwdGlvbjogQnVzIENsb2NrCisKKyAgIyBFdmVuIHRob3VnaCBpdCBvbmx5IGFwcGxp
ZXMgdG8gc3Vic2NoZW1hcyB1bmRlciB0aGUgY29uZGl0aW9uYWxzLAorICAjIG5vdCBsaXN0aW5n
IHRoZW0gaGVyZSB3aWxsIHRyaWdnZXIgYSB3YXJuaW5nIGJlY2F1c2Ugb2YgdGhlCisgICMgYWRk
aXRpb25hbHNQcm9wZXJ0aWVzIHNldCB0byBmYWxzZS4KKyAgY2xvY2stbmFtZXM6IHRydWUKKwor
ICByZXNldHM6CiAgICAgbWF4SXRlbXM6IDEKIAoraWY6CisgIHByb3BlcnRpZXM6CisgICAgY29t
cGF0aWJsZToKKyAgICAgIGNvbnRhaW5zOgorICAgICAgICBjb25zdDogYWxsd2lubmVyLHN1bjUw
aS1oNi1wd20KKwordGhlbjoKKyAgcHJvcGVydGllczoKKyAgICBjbG9ja3M6CisgICAgICBtYXhJ
dGVtczogMgorCisgICAgY2xvY2stbmFtZXM6CisgICAgICBpdGVtczoKKyAgICAgICAgLSBjb25z
dDogbW9kCisgICAgICAgIC0gY29uc3Q6IGJ1cworCisgIHJlcXVpcmVkOgorICAgIC0gY2xvY2st
bmFtZXMKKyAgICAtIHJlc2V0cworCitlbHNlOgorICBwcm9wZXJ0aWVzOgorICAgIGNsb2NrczoK
KyAgICAgIG1heEl0ZW1zOiAxCisKIHJlcXVpcmVkOgogICAtICIjcHdtLWNlbGxzIgogICAtIGNv
bXBhdGlibGUKQEAgLTU0LDQgKzkyLDE0IEBAIGV4YW1wbGVzOgogICAgICAgICAjcHdtLWNlbGxz
ID0gPDM+OwogICAgIH07CiAKKyAgLSB8CisgICAgcHdtQDMwMGEwMDAgeworICAgICAgY29tcGF0
aWJsZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWg2LXB3bSI7CisgICAgICByZWcgPSA8MHgwMzAwYTAw
MCAweDQwMD47CisgICAgICBjbG9ja3MgPSA8Jm9zYzI0TT4sIDwmY2N1IENMS19CVVNfUFdNPjsK
KyAgICAgIGNsb2NrLW5hbWVzID0gIm1vZCIsICJidXMiOworICAgICAgcmVzZXRzID0gPCZjY3Ug
UlNUX0JVU19QV00+OworICAgICAgI3B3bS1jZWxscyA9IDwzPjsKKyAgICB9OworCiAuLi4KLS0g
CjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
