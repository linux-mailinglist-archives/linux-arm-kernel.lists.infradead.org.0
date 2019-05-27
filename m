Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D72CB2BB34
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 22:15:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=frj14PseuGdLT+z7OeOnj8Ib8Fs7Y4JrMfB89hiBN6k=; b=ni9TS0ZGccinHR
	iTAK9Hrtjdm0UCkNo6RVfvU4YDs5JFoLa2nN8VfCv/h+FJezyWeXd/kbzt6j/aLWV059h6WC+sWkz
	sbdYeuD/r9gJNwXVWgBzX78OsNp3ATL9vISw/3cuv4eqEx3UPhn6dDHLYliuuPObgbooezWjR/HZc
	EUAo5WqMVsuHZCXUBGHo5kZWAhDmeIsY53nWnZ7tEOMKoFGrGem8mqoD/X5bCkZL4QJkDUe9qlo4S
	0OUucuoL4WhuYekMsh43rDpERdg012QXR+AEfUXW9R0Cici8UVHI5bL9Aei0QA2Ltx0eqmJD8dV+i
	dlWBY+FxDdrmlSpFLJKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVM1b-0006JQ-8i; Mon, 27 May 2019 20:15:15 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVM1T-0005iA-2s
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 20:15:08 +0000
Received: by mail-wr1-x444.google.com with SMTP id w13so9513408wru.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 13:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RXahGaBrkqUKt9hjO+RHzxhaODt54utR6Qk5vi9eCaQ=;
 b=owUyFwlXphbnCdPceA7pSRSRDBr3F1cc+EYPPm79e3Mf5qHXv14oDJt46X6NAUyIRR
 G8rIbeApWCEHEMmhlRx3sXskvz5BaS8egS4Oe3eTA7Ys+yuNij75fEoMQUizaMmwhxBD
 t8vJk+fQL+MCUNgL065d067WNqHgghWlYg2ur8Q/sOYgpDjMMkPOTouS7+pZphyN091F
 AEsIEBlrTAAuj60d8VMJv1XBSDROb2vq/4aMIo8KqsQ1aVp92V7++kk+PL/L39FQJifY
 hgTsxXS33KvZVSk33Hw64di1otY89d/aw5+eSOpGEVTZFs4aQbB2d+qHXBUr9wnla9jo
 sP5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RXahGaBrkqUKt9hjO+RHzxhaODt54utR6Qk5vi9eCaQ=;
 b=WWudFXDuOpFsKVCbfb1ABUfOXVO9hND2iv/ata+6GSvO/W0BhWD/15mMR0nVdAJBxb
 aXO3eMg5MjhnNFBgZd4MbssrzoeqehUMNHeUbsO5f4KAEBOLxsUWxlXu8IeVGWBbUbOl
 5t12HYBnncc0f3s121h+PC8UgN/c8XIzbpsrfIHgwBZ7p91S3spwxCDHlAD9P3exsLKs
 xUCch61gCbncYZ5wlgX1uh984Rs9XuaXX8ZQIuLsbzPB3Z5R3RyEkNxSYKGQQjS1lPTv
 SD0xui+EWhtP6OOSh/iXQuZnlWaVS57n/RCB1F/yllETDy+agR5OVjtq5ZMAsqWDhfxx
 7tNQ==
X-Gm-Message-State: APjAAAUNd6AKE/41JMueqXMxMpGjTUE2RV01UpOIEhCwep3yyUcSX9Q2
 CdK0L2/7GPq6kgrWgFDTk5Q=
X-Google-Smtp-Source: APXvYqxEJpHEqBC0rATeo4Jp5k5kbxhG9dMgCDzdVg4d/5zHBKkoNf1NUwOJp8BMU3gPMRXlDfRdQg==
X-Received: by 2002:a5d:5701:: with SMTP id a1mr75764699wrv.52.1558988105323; 
 Mon, 27 May 2019 13:15:05 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id i27sm347146wmb.16.2019.05.27.13.15.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 13:15:04 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Dan Williams <dan.j.williams@intel.com>
Subject: [PATCH v3 0/7] Allwinner H6 DMA support
Date: Mon, 27 May 2019 22:14:52 +0200
Message-Id: <20190527201459.20130-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_131507_142205_31ECA648 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpUaGlzIHNlcmllcyBoYXMgYmVlbiBmaXJzdCBwcm9wb3NlZCBieSBKZXJuZWogU2tyYWJl
Y1sxXS4KQXMgdGhpcyBzZXJpZXMgaXMgbWFuZGF0b3J5IGZvciBTUERJRi9JMlMgc3VwcG9ydCBh
bmQgYmVjYXVzZSBoZSBpcwpidXN5IG9uIENlZHJ1cyBzdHVmZi4gSSBhc2tlZCBoaW0gdG8gbWFr
ZSB0aGUgbWlub3IgY2hhbmdlIHJlcXVlc3RlZAphbmQgcmVwb3N0IGl0LgpBdXRob3JzaGlwIHJl
bWFpbnMgdG8gaGltLgoKSSBoYXZlIHRlc3RlZCB0aGlzIHNlcmllcyB3aXRoIFNQRElGIGRyaXZl
ciBhbmQgYWRkZWQgYSBwYXRjaCB0byBlbmFibGUKRE1BX1NVTjZJX0NPTkZJRyBmb3IgYXJtNjQu
CgpPcmlnaW5hbCBQb3N0OgoiCkRNQSBlbmdpbmUgZW5naW5lIG9uIEg2IGFsbW9zdCB0aGUgc2Ft
ZSBhcyBvbiBvbGRlciBTb0NzLiBUaGUgYmlnZ2VzdApkaWZmZXJlbmNlIGlzIHRoYXQgaXQgaGFz
IHNsaWdodGx5IHJlYXJyYW5nZWQgYml0cyBpbiByZWdpc3RlcnMgYW5kCml0IG5lZWRzIGFkZGl0
aW9uYWwgY2xvY2ssIHByb2JhYmx5IGR1ZSB0byBpb21tdS4KClRoZXNlIHBhdGNoZXMgd2VyZSB0
ZXN0ZWQgd2l0aCBJMlMgY29ubmVjdGVkIHRvIEhETUkuIEkyUyBuZWVkcwphZGRpdGlvbmFsIHBh
dGNoZXMgd2hpY2ggd2lsbCBiZSBzZW50IGxhdGVyLgoKUGxlYXNlIHRha2UgYSBsb29rLgoKQmVz
dCByZWdhcmRzLApKZXJuZWoKIgoKVGhhbmtzLApDbMOpbWVudAoKQ2hhbmdlcyBzaW5jZSB2MjoK
IC0gRHJvcCB0aGUgY2hhbmdlIG9mICJkbWEtcmVxdWVzdCIgZGVmYXVsdCB2YWx1ZQoKQ2hhbmdl
cyBzaW5jZSB2MToKIC0gRW5hYmxlIERNQV9TVU42SSBpbiBhcm02NCBkZWZjb25maWcKIC0gQ2hh
bmdlIG1idXNfY2xrIHRvIGhhc19tYnVzX2NsawogLSBDb2xsZWN0IFJvYiBILiByZXZpZXdlZC1i
eQoKQ2zDqW1lbnQgUMOpcm9uICgxKToKICBhcm02NDogZGVmY29uZmlnOiBlbmFibGUgQWxsd2lu
bmVyIERNQSBkcml2ZXJzCgpKZXJuZWogU2tyYWJlYyAoNik6CiAgZHQtYmluZGluZ3M6IGFybTY0
OiBhbGx3aW5uZXI6IGg2OiBBZGQgYmluZGluZyBmb3IgRE1BIGNvbnRyb2xsZXIKICBkbWFlbmdp
bmU6IHN1bjZpOiBBZGQgYSBxdWlyayBmb3IgYWRkaXRpb25hbCBtYnVzIGNsb2NrCiAgZG1hZW5n
aW5lOiBzdW42aTogQWRkIGEgcXVpcmsgZm9yIHNldHRpbmcgRFJRIGZpZWxkcwogIGRtYWVuZ2lu
ZTogc3VuNmk6IEFkZCBhIHF1aXJrIGZvciBzZXR0aW5nIG1vZGUgZmllbGRzCiAgZG1hZW5naW5l
OiBzdW42aTogQWRkIHN1cHBvcnQgZm9yIEg2IERNQQogIGFybTY0OiBkdHM6IGFsbHdpbm5lcjog
aDY6IEFkZCBETUEgbm9kZQoKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RtYS9zdW42aS1kbWEu
dHh0ICAgICB8ICAgOSArLQogYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2
LmR0c2kgIHwgIDEyICsrCiBhcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnICAgICAgICAgICAg
ICAgICAgfCAgIDEgKwogZHJpdmVycy9kbWEvc3VuNmktZG1hLmMgICAgICAgICAgICAgICAgICAg
ICAgIHwgMTQ3ICsrKysrKysrKysrKystLS0tLQogNCBmaWxlcyBjaGFuZ2VkLCAxMzIgaW5zZXJ0
aW9ucygrKSwgMzcgZGVsZXRpb25zKC0pCgotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
