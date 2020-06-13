Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA95B1F81D2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 10:22:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WkUb4VBpHpaZNbk26VltrikDdq75t9x+7g2lAgjKKpg=; b=Qj4iasc9Rpn/pz
	QEre99bfw2IjL9hR8ZFPgjUHCqYWiiPdCYdHprCbhj02ko7Tb9T9b4cBLT4xAsPGeL7ZOyfhZNlea
	Hh39x6GYMI3XjBDqu+Ydr5f8GhYeYGxMEl0u6fbpoOXi4XUyBajhq4z3lNpNhLph0vpoprpvxHJRk
	A19zEiWMSKgIo9KAVhlsWj+YZ9UaSG3kRW612sva/tpYBZGsec0jB6CyG63CKQkDpeM7n7jRacMrO
	P4CHYT8tmvdAy0C/KvzKvC91+9KmRftmYmPnmETt/OUL83CzP/lBQgT2XWCH5GbpDG/tmV6jUQzlg
	+5Kotg9oUl3vE+3BfnYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk1QK-0005cv-Hd; Sat, 13 Jun 2020 08:21:56 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk1Q9-0005bg-LF
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 08:21:47 +0000
Received: by mail-wr1-x442.google.com with SMTP id p5so12115814wrw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 01:21:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=u96+rSBzcvuJKQmsLPT95WNJaRtQiHeNyjReZCDFzSY=;
 b=pnPQEFr4liss5K5xbfzMn1tzmUyypjIhnw3RSaB5blOyygSUBKCgBIpfvOy1MdJ3oW
 1adpoRXb4dccRnASiMIXjPuCtF1JEz571GMH2QWkRNAwlDAhjW42nKXqtVSeJAscvcNX
 2l+01+9YIWsNJzRA4EAbWSiDxq72uT4skM8n6R3WrpjCrrSi+b6xeYA0CcXf5TiDgBAV
 KF3hmVE4XF39GeRC7ofXwSNc3QFNpr/Cco+1cXJnS31TtNY1Z36yKe1Aa8KY8djx33y6
 dDnxjjtmjTje0wyKORz3XYA6NNaeaPOurlZLpP6MDwK6d01CPpPM8CFfyySZT1DOhAYt
 DTtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=u96+rSBzcvuJKQmsLPT95WNJaRtQiHeNyjReZCDFzSY=;
 b=mWU6PA/h6f+gIHIM5cx/3KfAp+XFmm1YTR3IHgdiAPBwVEmAYaQkdPw5vb9i3vv4lB
 2cc8FeBx6X9HTfimvJHOCvDNXEM1quf5mB7CfdpECXhkgnHLQp/Zkx9Y2G+rh03XyDDI
 c9K1dPBowK6CqzaH9AcGOT3YRnt6u3cz0jRYUsb1dpu/KWRWzXwkYWLbhlfgR38JFE+Y
 /ccGyy8+yuNl+B5UlijSCNUCB+ABqJO/KOCLtB3EToDPV+VpBD628VstiQuGdriObDVw
 i5JjftJwHsxyxesyZqPwJ6DEIzNApP+SbWCwj5H7h5oQqshKD/aR8F55SktmWQpeFXpa
 K6DA==
X-Gm-Message-State: AOAM532stYGSug010kyPuAqPn9c/X/CFc022nFHZjfxoWCWqewydSCZI
 +/GEot9LKanLELr59Vcvp0Q=
X-Google-Smtp-Source: ABdhPJw5CQuHg+8ucc6NHRSc0Qqxol1zn/CzcAseQTV40KLUTSXTJCWbJem1vvXYdaCLRmT8uSKI5w==
X-Received: by 2002:adf:d0d0:: with SMTP id z16mr19349679wrh.308.1592036503434; 
 Sat, 13 Jun 2020 01:21:43 -0700 (PDT)
Received: from skynet.lan (168.red-88-20-188.staticip.rima-tde.net.
 [88.20.188.168])
 by smtp.gmail.com with ESMTPSA id n189sm12243603wmb.43.2020.06.13.01.21.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Jun 2020 01:21:42 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 0/9] bmips: add BCM63xx power domain controller
Date: Sat, 13 Jun 2020 10:21:31 +0200
Message-Id: <20200613082140.2009461-1-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200610171630.465579-1-noltari@gmail.com>
References: <20200610171630.465579-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_012145_696776_56BD93E7 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QkNNNjMxOCwgQkNNNjMyOCwgQkNNNjM2MiBhbmQgQkNNNjMyNjggU29DcyBoYXZlIGEgcG93ZXIg
ZG9tYWluIGNvbnRyb2xsZXIKdG8gZW5hYmxlL2Rpc2FibGUgY2VydGFpbiBjb21wb25lbnRzIGlu
IG9yZGVyIHRvIHNhdmUgcG93ZXIuCgp2NDogRml4IGRldmljZSB0cmVlIGJpbmRpbmdzIGRvY3Vt
ZW50YXRpb24uCnYzOiBJbnRyb2R1Y2UgY2hhbmdlcyBzdWdnZXN0ZWQgYnkgRmxvcmlhbjoKICAt
IFVzZSBkdC1iaW5kaW5ncyBkZWZpbml0aW9ucyBpbiBwb3dlciBkb21haW4gZHJpdmVyLgogIC0g
U2VwYXJhdGUgZHQtYmluZGluZ3MgZGVmaW5pdGlvbnMgZnJvbSBwb3dlciBkb21haW4gLmR0c2kg
c3VwcG9ydC4KdjI6IEludHJvZHVjZSBjaGFuZ2VzIHN1Z2dlc3RlZCBieSBGbG9yaWFuOgogIC0g
QWRkIHNlcGFyYXRlIFlBTUwgZmlsZSBmb3IgZHQtYmluZGluZ3MuCiAgLSBBZGQgYmNtNjN4eCBm
b2xkZXIgaW4gZHJpdmVycy9zb2MvYmNtLgogIC0gVXBkYXRlIE1BSU5UQUlORVJTLgogIC0gQWRk
IGR0LWJpbmRpbmdzIGhlYWRlciBmaWxlcy4KICAtIEFsc28gYWRkIEJDTTYzMjY4IHN1cHBvcnQu
CgrDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgKDkpOgogIGR0LWJpbmRpbmdzOiBzb2M6IGJyY206
IGFkZCBCQ002M3h4IHBvd2VyIGRvbWFpbiBiaW5kaW5nCiAgbWlwczogYm1pcHM6IGFkZCBCQ002
MzI4IHBvd2VyIGRvbWFpbiBkZWZpbml0aW9ucwogIG1pcHM6IGJtaXBzOiBhZGQgQkNNNjM2MiBw
b3dlciBkb21haW4gZGVmaW5pdGlvbnMKICBtaXBzOiBibWlwczogYWRkIEJDTTYzMjY4IHBvd2Vy
IGRvbWFpbiBkZWZpbml0aW9ucwogIG1pcHM6IGJtaXBzOiBhZGQgQkNNNjMxOCBwb3dlciBkb21h
aW4gZGVmaW5pdGlvbnMKICBzb2M6IGJjbTogYWRkIEJDTTYzeHggcG93ZXIgZG9tYWluIGRyaXZl
cgogIG1pcHM6IGJtaXBzOiBkdHM6IGFkZCBCQ002MzI4IHBvd2VyIGRvbWFpbiBzdXBwb3J0CiAg
bWlwczogYm1pcHM6IGR0czogYWRkIEJDTTYzNjIgcG93ZXIgZG9tYWluIHN1cHBvcnQKICBtaXBz
OiBibWlwczogZHRzOiBhZGQgQkNNNjMyNjggcG93ZXIgZG9tYWluIHN1cHBvcnQKCiAuLi4vYmlu
ZGluZ3MvcG93ZXIvYnJjbSxiY202M3h4LXBvd2VyLnlhbWwgICAgfCAgNDQgKysKIE1BSU5UQUlO
RVJTICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMSArCiBhcmNoL21pcHMv
Ym9vdC9kdHMvYnJjbS9iY202MzI2OC5kdHNpICAgICAgICAgfCAgIDYgKwogYXJjaC9taXBzL2Jv
b3QvZHRzL2JyY20vYmNtNjMyOC5kdHNpICAgICAgICAgIHwgICA2ICsKIGFyY2gvbWlwcy9ib290
L2R0cy9icmNtL2JjbTYzNjIuZHRzaSAgICAgICAgICB8ICAgNiArCiBkcml2ZXJzL3NvYy9iY20v
S2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgfCAgMTAgKwogZHJpdmVycy9zb2MvYmNtL01h
a2VmaWxlICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvc29jL2JjbS9iY202
M3h4L0tjb25maWcgICAgICAgICAgICAgICB8ICAxMiArCiBkcml2ZXJzL3NvYy9iY20vYmNtNjN4
eC9NYWtlZmlsZSAgICAgICAgICAgICAgfCAgIDIgKwogZHJpdmVycy9zb2MvYmNtL2JjbTYzeHgv
YmNtNjN4eC1wb3dlci5jICAgICAgIHwgMzc4ICsrKysrKysrKysrKysrKysrKwogaW5jbHVkZS9k
dC1iaW5kaW5ncy9zb2MvYmNtNjMxOC1wbS5oICAgICAgICAgIHwgIDE3ICsKIGluY2x1ZGUvZHQt
YmluZGluZ3Mvc29jL2JjbTYzMjY4LXBtLmggICAgICAgICB8ICAyMSArCiBpbmNsdWRlL2R0LWJp
bmRpbmdzL3NvYy9iY202MzI4LXBtLmggICAgICAgICAgfCAgMTcgKwogaW5jbHVkZS9kdC1iaW5k
aW5ncy9zb2MvYmNtNjM2Mi1wbS5oICAgICAgICAgIHwgIDIxICsKIDE0IGZpbGVzIGNoYW5nZWQs
IDU0MiBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3Bvd2VyL2JyY20sYmNtNjN4eC1wb3dlci55YW1sCiBjcmVhdGUgbW9k
ZSAxMDA2NDQgZHJpdmVycy9zb2MvYmNtL2JjbTYzeHgvS2NvbmZpZwogY3JlYXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvc29jL2JjbS9iY202M3h4L01ha2VmaWxlCiBjcmVhdGUgbW9kZSAxMDA2NDQg
ZHJpdmVycy9zb2MvYmNtL2JjbTYzeHgvYmNtNjN4eC1wb3dlci5jCiBjcmVhdGUgbW9kZSAxMDA2
NDQgaW5jbHVkZS9kdC1iaW5kaW5ncy9zb2MvYmNtNjMxOC1wbS5oCiBjcmVhdGUgbW9kZSAxMDA2
NDQgaW5jbHVkZS9kdC1iaW5kaW5ncy9zb2MvYmNtNjMyNjgtcG0uaAogY3JlYXRlIG1vZGUgMTAw
NjQ0IGluY2x1ZGUvZHQtYmluZGluZ3Mvc29jL2JjbTYzMjgtcG0uaAogY3JlYXRlIG1vZGUgMTAw
NjQ0IGluY2x1ZGUvZHQtYmluZGluZ3Mvc29jL2JjbTYzNjItcG0uaAoKLS0gCjIuMjcuMAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
