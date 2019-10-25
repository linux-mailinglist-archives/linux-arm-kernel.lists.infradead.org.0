Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 946F9E52A4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 19:56:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V3pW+1nZTOJGWjNDFpHs6leOXYi++0OnjmLgxaU7gNs=; b=BUJFVuvGiyKmkQ
	SliXnZCzLLCbioK+rRCm5iDzuBnVgu2+3KgmNJ950LD5esI25bYGqnhdHF7k2+4v/FqeeVVc3XF0R
	WD7JDP5cUKUfMWUw7hVk/0jjTZiPgQaVqa8OKKiW8iinBhidIgdJIa+SC9LjSdPZsBUi7YomFpot5
	+pG4RlNkOY2gYeR7PtcwUJunLXUJ72wzl4EsK1zVKuYblMK5AiA/AioGwCknxeEhFvPFAxO6mQl24
	MIsslYoLJ5RPX2IY4p7K1YG/GoiSNYBScT7bOqo8NIuY5puZgJEWVvf6pwqWz+xpRZ8ldS5B+XNUD
	swCp5G+Y6ICbIqRh5GSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO3pW-0002iy-1y; Fri, 25 Oct 2019 17:56:54 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO3pL-0002iD-Uf
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 17:56:45 +0000
Received: by mail-pg1-x543.google.com with SMTP id k20so2032108pgi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 10:56:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CZu1y7RFPTmm+e4tCk9sCPOaUomZD2b+NU7YQ9E83qM=;
 b=YhjRITCeN91gMx3yOBIKu1C/Pio+m/xXybbzZLCU25mrLAjzyrOYfNs1bhqX/uwVzD
 xrMOinaz6vv7qJY1vx/NwIHKq3EqmHOgy/jU9Dl2pHGXYkEWrTAJQki2NH27JXd6tcQz
 QqlAaNV8+/GmvrmeZx1FFtPzeMWx9l3huboSQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CZu1y7RFPTmm+e4tCk9sCPOaUomZD2b+NU7YQ9E83qM=;
 b=rMTwwEdxgxJtS6kCFUGBZRIMhXHjhiFWzvXhUzJ9xYWm2P8nE8LAmKKzqRILk0jNkm
 sOC6dqvFbvL8jvtm7Bs7e+bxQc/PiJhoQROPFMq2xD6sayrXCcs7BaDDHjFQNvOfKyGH
 Y4AKXdOEtqj14r/DyqqEC8VIUVh1psKimaeMTCrDMfinR0sGJXebUJRBTp21jk/pcofm
 0/agi9f6W6d6vC8JGtRydm/zn++NW0ISTYxx1ecREJL63MKjymjl22yUEMTdvZcm+ebv
 WtEW5BL3y8cyczmQM+oNOjPcrlPlgkMeygomvhmOkJR+dMVOqTrfXoidqsTplrWDCH6f
 2AVA==
X-Gm-Message-State: APjAAAW8cb7pIsrSs+QcxzUyo4pjheFqQWXWZNZCGrRwNf262Ia1AYOs
 FwKGo1Ec09XRJTmoTxQAGFNA9A==
X-Google-Smtp-Source: APXvYqyQeMNwRRfVdYbplZky4DnGyeCS16N1lkW3Qf6FFBlut0tyb3bO5QFkhxBsvIR+NOqRTEQOdg==
X-Received: by 2002:a17:90a:ad95:: with SMTP id
 s21mr5737486pjq.11.1572026202818; 
 Fri, 25 Oct 2019 10:56:42 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id n15sm2926580pfq.146.2019.10.25.10.56.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 10:56:42 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v11 0/7] drm/sun4i: Allwinner A64 MIPI-DSI support
Date: Fri, 25 Oct 2019 23:26:18 +0530
Message-Id: <20191025175625.8011-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_105644_129056_61D0AA8A 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Jagan Teki <jagan@amarulasolutions.com>, michael@amarulasolutions.com,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBpcyB2MTEgdmVyc2lvbiBmb3IgQWxsd2lubmVyIEE2NCBNSVBJLURTSSBzdXBwb3J0CmFu
ZCBoZXJlIGlzIHRoZSBwcmV2aW91cyB2ZXJzaW9uIHNldFsxXQoKQ2hhbmdlcyBmb3IgdjExOgot
IGZpeCBkdC1iaW5kaW5ncyBmb3IgZHBoeQotIGZpeCBkdC1iaW5kaW5ncyBmb3IgZHNpIGNvbnRy
b2xsZXIKLSBhZGQgYnVzIGNsb2NrIGhhbmRsaW5nIGNvZGUKLSB0ZXN0ZWQgb24gQTY0LCBBMzMg
Ym9hcmRzLgpDaGFuZ2VzIGZvciB2MTA6Ci0gdXBkYXRlZCBkdC1iaW5kaW5ncyBhcyBwZXIgLnlh
bWwgZm9ybWF0Ci0gcmViYXNlZCBvbiBkcm0tbWlzYy9mb3ItbGludXgtbmV4dApDaGFuZ2VzIGZv
ciB2OToKLSBtb3ZlZCBkc2kgZml4ZXMgaW4gc2VwYXJhdGUgc2VyaWVzIG9uIHRvcCBvZiBBMzMK
LSByZWJhc2Ugb24gbGludXgtbmV4dApDaGFuZ2VzIGZvciB2ODoKLSByZWJhc2VkIG9uIGRybS1t
aXNjIGNoYW5nZSBhbG9uZyB3aXRoIGxpbnV4LW5leHQKLSByZXdvcmtlZCB2aWRlbyBzdGFydCBk
ZWxheSBwYXRjaAotIHRlc3RlZCBvbiA0IGRpZmZlcmVudCBkc2kgcGFuZWxzCi0gcmV3b3JrZWQg
Y29tbWl0IG1lc3NhZ2VzCkNoYW5nZXMgZm9yIHY3OgotIG1vdmVkIHZjYy1kc2kgYmluZGluZyB0
byByZXF1aXJlZCBmaWxlZC4KLSBkcm9wIHF1b3RlcyBvbiBmYWxsYmFjayBkcGh5IGJpbmRpbmdz
LgotIGRyb3AgbWluX3JhdGUgY2xvY2sgcGxsLW1pcGkgcGF0Y2hlcy4KLSBpbnRyb2R1Y2UgZGNs
ayBkaXZpZGVyIGNvbXB1dGF0aW9uIGFzIGxpa2UgQTY0IEJTUC4KLSBhZGQgQTY0IERTSSBxdWFy
ayBwYXRjaGVzLgotIGZpeGVkIEE2NCBEU0kgcGlwZWxpbmUuCi0gYWRkIHByb3BlciBjb21taXQg
bWVzc2FnZXMuCi0gY29sbGVjdCBNZXJsaWpuIFdhamVyIFRlc3RlZC1ieSBjcmVkaXRzLgpDaGFu
Z2VzIGZvciB2NjoKLSBkcm9wcGVkIHVubmVlZGVkIGNoYW5nZXMsIHBhdGNoZXMKLSBmaXhlZCBh
bGwgYnVyc3QgbW9kZSBwYXRjaGVzIGFzIHBlciBwcmV2aW91cyB2ZXJzaW9uIGNvbW1lbnRzCi0g
cmViYXNlIG9uIG1hc3RlcgotIHVwZGF0ZSBwcm9wZXIgY29tbWl0IG1lc3NhZ2UKLSBkcm9wcGVk
IHVubmVlZGVkIGNvbW1lbnRzCi0gb3JkZXIgdGhlIHBhdGNoZXMgdGhhdCBtYWtlIHJldmlldyBl
YXN5CkNoYW5nZXMgZm9yIHY1OgotIGNvbGxlY3QgUm9iLCBBY2tlZC1ieQotIGRyb3BlZCAiRml4
IFZCUCBzaXplIGNhbGN1bGF0aW9uIiBwYXRjaAotIHVwZGF0ZWQgdmJsayB0aW1pbmcgY2FsY3Vs
YXRpb24uCi0gZHJvcGVkIHRlY2hzdGFyLCBiYW5hbmFwaSBkc2kgcGFuZWwgZHJpdmVycyB3aGlj
aCBtYXkgcmVxdWlyZQogIGJyaWRnZSBvciBvdGhlciBzZXR1cC4gaXQncyB1bmRlciBkaXNjdXNz
aW9uLgpDaGFuZ2VzIGZvciB2NDoKLSBkcm9wcG9lZCB1bnRlc3RlZCBDQ1VfRkVBVFVSRV9GSVhF
RF9QT1NURElWIGNoZWNrIGNvZGUgaW4KICBua20gbWluLCBtYXggcmF0ZSBwYXRjaGVzCi0gY3Jl
YXRlIHR3byBwYXRjaGVzIGZvciAiQWRkIEFsbHdpbm5lciBBNjQgTUlQSSBEU0kgc3VwcG9ydCIK
ICBvbmUgZm9yIGhhc19tb2RfY2xrIHF1aXJrIGFuZCBvdGhlciBvbmUgZm9yIEE2NCBzdXBwb3J0
Ci0gdXNlIGV4aXN0aW5nIGRyaXZlciBjb2RlIGNvbnN0cnVjdCBmb3IgaGJsayBjb21wdXRhdGlv
bgotIGRyb3BwZWQgIkluY3JlYXNlIGhmcCBwYWNrZXQgb3ZlcmhlYWQiIHBhdGNoIFsyXSwgdGhv
dWdoIEJTUCBhZGRlZAogIHRoaXMgYnV0IHdlIGhhdmUgbm8gaXNzdWVzIGFzIG9mIG5vdy4KICAo
bm8gaXNzdWVzIG9uIHBhbmVsIHNpZGUgdy9vIHRoaXMgY2hhbmdlKQotIGNyZWF0ZSBzZXBhcmF0
ZSBmdW5jdGlvbiBmb3IgdmJsayBjb21wdXRhdGlvbiAKLSBlbmFibGUgdmNjLWRzaSByZWd1bGF0
b3IgaW4gZHNpX3J1bnRpbWVfcmVzdW1lCi0gY29sbGVjdCBSb2IsIEFja2VkLWJ5Ci0gdXBkYXRl
IE1BSU5UQUlORVJTIGZpbGUgZm9yIHBhbmVsIGRyaXZlcnMKLSBjbGVhbnVwIGNvbW1pdCBtZXNz
YWdlcwotIGZpeGVkIGNoZWNrcGF0Y2ggd2FybmluZ3MvZXJyb3JzCgpbMV0gaHR0cHM6Ly9wYXRj
aHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NzYzMi8KCkFueSBpbnB1dHM/CkphZ2FuLgoK
SmFnYW4gVGVraSAoNyk6CiAgZHQtYmluZGluZ3M6IHN1bjZpLWRzaTogRG9jdW1lbnQgQTY0IE1J
UEktRFNJIGNvbnRyb2xsZXIKICBkdC1iaW5kaW5nczogc3VuNmktZHNpOiBBZGQgQTY0IERQSFkg
Y29tcGF0aWJsZSAody8gQTMxIGZhbGxiYWNrKQogIGRybS9zdW40aTogZHNpOiBBZGQgaGFzX21v
ZF9jbGsgcXVpcmsKICBkcm0vc3VuNGk6IGRzaTogSGFuZGxlIGJ1cyBjbG9jayBleHBsaWNpdGx5
wqAKICBkcm0vc3VuNGk6IGRzaTogQWRkIEFsbHdpbm5lciBBNjQgTUlQSSBEU0kgc3VwcG9ydAog
IGFybTY0OiBkdHM6IGFsbHdpbm5lcjogYTY0OiBBZGQgTUlQSSBEU0kgcGlwZWxpbmUKICBbRE8g
Tk9UIE1FUkdFXSBhcm02NDogZHRzOiBhbGx3aW5uZXI6IGJhbmFuYXBpLW02NDogRW5hYmxlIEJh
bmFuYXBpIFMwNzBXVjIwLUNUMTYgRFNJIHBhbmVsCgogLi4uL2Rpc3BsYXkvYWxsd2lubmVyLHN1
bjZpLWEzMS1taXBpLWRzaS55YW1sIHwgMjAgKysrKysrLQogLi4uL3BoeS9hbGx3aW5uZXIsc3Vu
NmktYTMxLW1pcGktZHBoeS55YW1sICAgIHwgIDYgKy0KIC4uLi9kdHMvYWxsd2lubmVyL3N1bjUw
aS1hNjQtYmFuYW5hcGktbTY0LmR0cyB8IDMxICsrKysrKysrKysrCiBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL2FsbHdpbm5lci9zdW41MGktYTY0LmR0c2kgfCAzNyArKysrKysrKysrKysrCiBkcml2ZXJz
L2dwdS9kcm0vc3VuNGkvc3VuNmlfbWlwaV9kc2kuYyAgICAgICAgfCA1NSArKysrKysrKysrKysr
KystLS0tCiBkcml2ZXJzL2dwdS9kcm0vc3VuNGkvc3VuNmlfbWlwaV9kc2kuaCAgICAgICAgfCAg
NSArKwogNiBmaWxlcyBjaGFuZ2VkLCAxMzkgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0p
CgotLSAKMi4xOC4wLjMyMS5nZmZjNmZhMGUzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
