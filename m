Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F59B100329
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:01:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kvD2IPqNtid8Q6wcFHCdguezwiZQ+Ees7zGqoB8/320=; b=YLKP9DNvhQE+jf
	ojUB2eGWhR8VYLnsK1a35z7ovpeJlaoIVHYlH+L1AsrLOQ2PHnEXuFeRg0SjwMiNNViYXPh5W7cFM
	cYmcsXEbLL0C2QEgUu+w/gO4bZnL8IejhgkIDf5z4t1H/cQeyFS3g0Ltqg/H/RgaKJ8FcZJTMuX6O
	oKFBiJL4Rd5Udj4j7ILuOS/AS9XPhgHdjn7ZWVg4+EXIB39ARl7NolalxZW7mdjJjtRGSjNZxIvur
	yT0Bzb86D6ex6nFF6Pd9Cf5UtdQPH41uHSKs8ogndJShg5olsfQlICjJBJJrJzjtXxK/cbc62yMbr
	jSh8cZ9lAd499TDPjXrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWem7-0006fn-88; Mon, 18 Nov 2019 11:00:55 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWelt-0006do-7n
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:00:42 +0000
Received: by mail-wr1-x441.google.com with SMTP id s5so18910766wrw.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:00:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CwG2QKBTPng2ELiNtc6lBmywHFbDH68p/PbyzwMke0w=;
 b=seaSPzcWW7pAe6mvpfNGIERNdtwFtoRJGER3FNZ3pjh5BXyy25wIBOIe1jm0Ppszfb
 +M7hxsDAsA8Xwp0E8MLUAISuM3CF/CY5Pn4G+aerOUO2QlsVvjf/DuExFwDUSagUZ32Y
 RAHkot59E2fxg1rzppEHTVw/Q6AI54xRVOVtB1m3fgl1hNYFB3nV1BXhutcmcDkNnWgE
 4IV2f/zR9onY7jrj0y5x9BzMKSdUaCVVHqYWsQg4xA8ertEw/gTZFYGBbzQ4nWAB3K7y
 1qVtTTRNXvvxQVI95tyVxxI4Xz3Vg7nbp6T1CqAA6+GiK+AaZLYynnIL7teVHqL9iEAd
 lILQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CwG2QKBTPng2ELiNtc6lBmywHFbDH68p/PbyzwMke0w=;
 b=sQJPfqweqgts207EyWtzrFFNlT/0BaspytVxg3CjHGY/9AA/Xcb8ZPxFxjr5gDQveo
 xRWBmEY+gPdXDutkK4uB7PdlZcVhPR+2MTc6dn+m8lp/C/ZErrjreUlVeJAuzSms8uTQ
 7TJ5ROCugK9wplzMbpH//87rvH2ZWRKJNCfN6HhDLTXK5PNXyF9W68TOMHlnzkdO6WBs
 Dh2qooM2UnbGeUjHhtay9v17KirCgDhXxCPQRdvwVWG8ugSVDUXQ5CbfqLLzo7L3uZzO
 Q8+v7XqflrBTkb3oInQm07qpBboHZj24gMOWGz2gWZFYK2n76OHHJbiuW/6n4J21hGB7
 mJ4A==
X-Gm-Message-State: APjAAAXOoFJVwnZMAfxQ4HpTkPz0wo0u0FVVKlOuvnAuo1gHVGfMPkVm
 9cT4CHFQEZ7j0SQ/yrZanGY=
X-Google-Smtp-Source: APXvYqy51ZqGdaG0m12s1h+XihVJJ3jXrIA+ItvBShJOBrCbxAo7ED8x2y4bje26IMScyYqPIzMP/g==
X-Received: by 2002:adf:b608:: with SMTP id f8mr27742764wre.99.1574074839807; 
 Mon, 18 Nov 2019 03:00:39 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id f67sm19873313wme.16.2019.11.18.03.00.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:00:39 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v6 0/8] Add support for H6 PWM
Date: Mon, 18 Nov 2019 12:00:26 +0100
Message-Id: <20191118110034.19444-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_030041_304707_44791AB9 
X-CRM114-Status: GOOD (  18.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Cc: linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpUaGlzIGlzIGEgcmV3b3JrIG9mIEplcm5laidzIHByZXZpb3VzIHdvcmtbMV0gdGFraW5n
IGFjY291bnQgYWxsIHRoZQpwcmV2aW91cyByZW1hcmtzLgoKQmluZGluZ3MgaXMgc3RpbGwgc3Ry
aWN0IGJ1dCBwcm9iZSBpbiB0aGUgZHJpdmVyIGFyZSBub3cgb3B0aW9ubmFscy4KCklmIHNvbWVv
bmUgY291bGQgY29uZmlybSB0aGF0IHRoZSBQV00gaXMgbm90IGJyb2tlbiwgYXMgbXkgYm9hcmQK
ZG9lc24ndCBvdXRwdXQgaXQuCgpJIGRpZG4ndCBhZGQgdGhlIGFja2VkLXRhZ3MgYXMgdGhlcmUg
YXJlIGJpZyBjaGFuZ2VzLgoKVGhhbmtzLApDbMOpbWVudAoKSmVybmVqJ3MgY292ZXI6CkFsbHdp
bm5lciBINiBTb0MgaGFzIFBXTSBjb3JlIHdoaWNoIGlzIGJhc2ljYWxseSB0aGUgc2FtZSBhcyB0
aGF0IGZvdW5kCmluIEEyMCwgaXQncyBqdXN0IGRlcGVuZHMgb24gYWRkaXRpb25hbCBidXMgY2xv
Y2sgYW5kIHJlc2V0IGxpbmUuCgpUaGlzIHNlcmllcyBhZGRzIHN1cHBvcnQgZm9yIGl0IGFuZCBl
eHRlbmRzIFBXTSBkcml2ZXIgZnVuY3Rpb25hbGl0eSBpbgphIHdheSB0aGF0IGl0J3Mgbm93IHBv
c3NpYmxlIHRvIGJ5cGFzcyB3aG9sZSBjb3JlIGFuZCBvdXRwdXQgUFdNIHNvdXJjZQpjbG9jayBk
aXJlY3RseSBhcyBhIFBXTSBzaWduYWwuIFRoaXMgZnVuY3Rpb25hbGl0eSBpcyBuZWVkZWQgYnkg
QUMyMDAKY2hpcCwgd2hpY2ggaXMgYnVuZGxlZCBpbiBzYW1lIHBoeXNpY2FsIHBhY2thZ2UgYXMg
SDYgU29DLCB0byBzZXJ2ZSBhcyBhCmNsb2NrIHNvdXJjZSBvZiAyNCBNSHouIEFDMjAwIGNsb2Nr
IGlucHV0IHBpbiBpcyBib25kZWQgaW50ZXJuYWxseSB0bwp0aGUgc2Vjb25kIFBXTSBjaGFubmVs
LgoKSSB3b3VsZCBiZSBncmF0ZWZ1bCBpZiBhbnlvbmUgY2FuIHRlc3QgdGhpcyBwYXRjaCBzZXJp
ZXMgZm9yIGFueSBraW5kIG9mCnJlZ3Jlc3Npb24gb24gb3RoZXIgU29Dcy4KClsxXTogaHR0cHM6
Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9jb3Zlci8xMTA2MTczNy8KCkNoYW5nZXMgaW4gdjY6CiAt
IFVwZGF0ZSBnaXQgY29tbWl0IGxvZwogLSBEaXN0aW5ndWlzaCBlcnJvciBtZXNzYWdlIAoKQ2hh
bmdlcyBpbiB2NToKIC0gTW92ZSBieXBhc3MgY2FsY3VsYXRpb24gdG8gcHdtX2NhbGN1bGF0ZQog
LSBTcGxpdCBtb2RfY2xvY2sgZmFsbGJhY2sgZnJvbSBidXNfY2xrIHByb2JlICAgIAogLSBVcGRh
dGUgY29tbWVudAogLSBNb3ZlIG15IFNvQiBhZnRlciBhY2tlZC1ieS9yZXZpZXdlZC1ieQoKQ2hh
bmdlcyBpbiB2NDoKIC0gaXRlbSBkZXNjcmlwdGlvbiBpbiBjb3JyZWN0IG9yZGVyIGFuZCBhZGQg
YSBibGFuayBsaW5lCiAtIHVzZSAlcGUgZm9yIHByaW50aW5nIFBUUl9FUlIKIC0gZG9uJ3QgcHJp
bnQgZXJyb3Igd2hlbiBpdCdzIGFuIEVQUk9CRV9ERUZFUgogLSBjaGFuZ2Ugb3V0cHV0IGNsb2Nr
IGJ5cGFzcyBmb3JtdWxhIHRvIG1hdGNoIFBXTSBwb2xpY3kKCkNoYW5nZXMgaW4gdjM6CiAtIERv
Y3VtZW50YXRpb24gdXBkYXRlIHRvIGFsbG93IG9uZSBjbG9jayB3aXRob3V0IG5hbWUKIC0gQ2hh
bmdlIHJlc2V0IG9wdGlvbmFsIHRvIHNoYXJlZAogLSBJZiByZXNldCBwcm9iZSBmYWlsZWQgcmV0
dXJuIGFuIGVycm9yCiAtIFJlbW92ZSBvbGQgY2xvY2sgcHJvYmUKIC0gVXBkYXRlIGJ5cGFzcyBl
bmFibGVkIGZvcm11bGEKCkNoYW5nZXMgaW4gdjI6CiAtIFJlbW92ZSBhbGxPZiBpbiBEb2N1bWVu
dGF0aW9uCiAtIEFkZCBINiBleGFtcGxlIGluIERvY3VtZW50YXRpb24KIC0gQ2hhbmdlIGNsb2Nr
IG5hbWUgZnJvbSAicHdtIiB0byAibW9kIgogLSBDaGFuZ2UgcmVzZXQgcXVpcmsgdG8gb3B0aW9u
YWwgcHJvYmUKIC0gQ2hhbmdlIGJ1c19jbG9jayBxdWlyayB0byBvcHRpb25hbCBwcm9iZQogLSBB
ZGQgbGltaXRhdGlvbiBjb21tZW50IGFib3V0IG1vZF9jbGtfb3V0cHV0CiAtIEFkZCBxdWlyayBm
b3IgbW9kX2Nsa19vdXRwdXQKIC0gQ2hhbmdlIGJ5cGFzcyBmb3JtdWxhCgpDbMOpbWVudCBQw6ly
b24gKDIpOgogIHB3bTogc3VuNGk6IFByZWZlciAibW9kIiBjbG9jayB0byB1bm5hbWVkCiAgW0RP
IE5PVCBNRVJHRV0gYXJtNjQ6IGFsbHdpbm5lcjogaDY6IGVuYWJsZSBCZWVsaW5rIEdTMSBQV00K
Ckplcm5laiBTa3JhYmVjICg2KToKICBkdC1iaW5kaW5nczogcHdtOiBhbGx3aW5uZXI6IEFkZCBI
NiBQV00gZGVzY3JpcHRpb24KICBwd206IHN1bjRpOiBBZGQgYW4gb3B0aW9uYWwgcHJvYmUgZm9y
IHJlc2V0IGxpbmUKICBwd206IHN1bjRpOiBBZGQgYW4gb3B0aW9uYWwgcHJvYmUgZm9yIGJ1cyBj
bG9jawogIHB3bTogc3VuNGk6IEFkZCBzdXBwb3J0IHRvIG91dHB1dCBzb3VyY2UgY2xvY2sgZGly
ZWN0bHkKICBwd206IHN1bjRpOiBBZGQgc3VwcG9ydCBmb3IgSDYgUFdNCiAgYXJtNjQ6IGR0czog
YWxsd2lubmVyOiBoNjogQWRkIFBXTSBub2RlCgogLi4uL2JpbmRpbmdzL3B3bS9hbGx3aW5uZXIs
c3VuNGktYTEwLXB3bS55YW1sIHwgIDQ4ICsrKysrCiAuLi4vZHRzL2FsbHdpbm5lci9zdW41MGkt
aDYtYmVlbGluay1nczEuZHRzICAgfCAgIDQgKwogYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5u
ZXIvc3VuNTBpLWg2LmR0c2kgIHwgIDEwICsKIGRyaXZlcnMvcHdtL3B3bS1zdW40aS5jICAgICAg
ICAgICAgICAgICAgICAgICB8IDE4NSArKysrKysrKysrKysrKystLS0KIDQgZmlsZXMgY2hhbmdl
ZCwgMjE1IGluc2VydGlvbnMoKyksIDMyIGRlbGV0aW9ucygtKQoKLS0gCjIuMjAuMQoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
