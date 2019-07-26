Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A377076467
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 13:28:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Jq1zAEB12aWUTbd0aSpvAgShcGbYXGB8reV5xpoasmc=; b=HsH1Dg0bMaL9aV
	5CUsLmgD0f9mWYrqkmwxB/FF6cyE9io6LSTN/IO1b75NPpyPPsYVPc2iqy4dJOgX9LzAKsQ79Vo82
	ZUAHOnbwvV4NDZV7DB+KEjKym0JZ9VD/3KJtXCkvM4ag9iBH23W65+U28b5JJS6LNB7etuhRZ7Xrx
	QsjUmKReOdaecuCqU+ilazqZH7BbHejPWimYN2Q6/1ZApTgc71oKhB/ymAqo6UjGSo+dA423cbw6d
	DxZKpbuMIonY6xkdveRGMpI1w4No/Z7iotEDGdMNmOBuPcPuIPnmdifqv9k/tUGk5wIJuevfTkCEI
	fuVi5snZilw6MntWjB1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqyOT-00022p-5o; Fri, 26 Jul 2019 11:28:13 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqyNg-0001cE-1b
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 11:27:25 +0000
Received: by mail-lf1-x144.google.com with SMTP id x3so36943416lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 04:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=g0nLERSg4u07PeLcbnJNifTNV6Ww1N/l/brHYj7jzWs=;
 b=tEZoMFkZNgKAf/ALc17jFdnG9AJ4QvVybihHJF/c2D6S8n5SsN+L+0XjTStbuw6X3M
 bhiLIFDVRKQDJwMjvY2YSPQW6Z18SiYmYS/N8UJts90hythAR+0+zfg+jIGnVVW2J+rP
 8qs/GJBVLpPG9EnfUtu3StUmEO0+4fVONMAQaypVDPNuMax6SLKkNRDcIq3OFdqbtPzf
 Bzga0dDpWlbFfGCELpmpkhKsiNExxgIJHjumwcK/j5zDry2aUVodOsIv/Y0GsUrnIZOY
 dk6ZmzAJmE/wTwCzcPDS8Gbt0fcwWyQ/djnGDjygEEDWDm/NHJI6XyPIxmmU41YyBfip
 K++A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=g0nLERSg4u07PeLcbnJNifTNV6Ww1N/l/brHYj7jzWs=;
 b=IXmF9+LICmPFGXwOaW9aIYpFTxkFulToi30H6ZmVVnp+Q5a76GhLrj5QXAEOXQUwb+
 v7AdMRn8czv1qZXW+dwbxZOYaLJP8akIqXnR7/3GKACY6Ye/vURjHXoxaLJDpIy+yoZi
 gtc4CYYDrfmq3ywgRaMGoYswx/3bA3eqeTZPsuujBngc4nVq+UHGQyLoP7/321LUj9gV
 zDIYrUK7kFOjxu9V5n25mBrrJixVV2dTXKfk7Q5a4N+nLYFohga+1L9HzhGBPVJYvSxd
 l3SwWj0uAcSjfvxBdDZztwTlQ/U/JRFqcai/pa46kjBm3k6pddKhSvMBl9S9NWgGT6iB
 P0LA==
X-Gm-Message-State: APjAAAVWnCncHPtZev1j8hJLwQ5krbvpr+ixkOTRm+XZGoaseIY89qH4
 rGowT7xsNLKvJivE8bygWcDDdA==
X-Google-Smtp-Source: APXvYqzA4M9X20guHIBIplEQvEBB6Y95fjhGaemXWIsOmXfspEG/yh8Z8jnFK4oopjvXljlNC+Uf6w==
X-Received: by 2002:a19:234c:: with SMTP id j73mr1078425lfj.96.1564140441031; 
 Fri, 26 Jul 2019 04:27:21 -0700 (PDT)
Received: from localhost (c-243c70d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.60.36])
 by smtp.gmail.com with ESMTPSA id l22sm9910671ljc.4.2019.07.26.04.27.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 04:27:20 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: will@kernel.org,
	mark.rutland@arm.com,
	catalin.marinas@arm.com
Subject: [PATCH 1/3] arm64: perf: Mark expected switch fall-through
Date: Fri, 26 Jul 2019 13:27:16 +0200
Message-Id: <20190726112716.19104-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_042724_160172_320303E9 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: stable@vger.kernel.org, Anders Roxell <anders.roxell@linaro.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2hlbiBmYWxsLXRocm91Z2ggd2FybmluZ3Mgd2FzIGVuYWJsZWQgYnkgZGVmYXVsdCwgY29tbWl0
IGQ5MzUxMmVmMGYwZQooIk1ha2VmaWxlOiBHbG9iYWxseSBlbmFibGUgZmFsbC10aHJvdWdoIHdh
cm5pbmciKSwgdGhlIGZvbGxvd2luZwp3YXJuaW5ncyB3YXMgc3RhcnRpbmcgdG8gc2hvdyB1cDoK
Ci4uL2FyY2gvYXJtNjQva2VybmVsL2h3X2JyZWFrcG9pbnQuYzogSW4gZnVuY3Rpb24g4oCYaHdf
YnJlYWtwb2ludF9hcmNoX3BhcnNl4oCZOgouLi9hcmNoL2FybTY0L2tlcm5lbC9od19icmVha3Bv
aW50LmM6NTQwOjc6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBmYWxsCiB0aHJvdWdoIFst
V2ltcGxpY2l0LWZhbGx0aHJvdWdoPV0KICAgIGlmIChody0+Y3RybC5sZW4gPT0gQVJNX0JSRUFL
UE9JTlRfTEVOXzEpCiAgICAgICBeCi4uL2FyY2gvYXJtNjQva2VybmVsL2h3X2JyZWFrcG9pbnQu
Yzo1NDI6Mzogbm90ZTogaGVyZQogICBjYXNlIDI6CiAgIF5+fn4KLi4vYXJjaC9hcm02NC9rZXJu
ZWwvaHdfYnJlYWtwb2ludC5jOjU0NDo3OiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBtYXkgZmFs
bAogdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1dCiAgICBpZiAoaHctPmN0cmwubGVu
ID09IEFSTV9CUkVBS1BPSU5UX0xFTl8yKQogICAgICAgXgouLi9hcmNoL2FybTY0L2tlcm5lbC9o
d19icmVha3BvaW50LmM6NTQ2OjM6IG5vdGU6IGhlcmUKICAgZGVmYXVsdDoKICAgXn5+fn5+fgoK
UmV3b3JrIHNvIHRoYXQgdGhlIGNvbXBpbGVyIGRvZXNuJ3Qgd2FybiBhYm91dCBmYWxsLXRocm91
Z2guIFJld29yayBzbwp0aGUgY29kZSBsb29rcyBsaWtlIHRoZSBhcm0gY29kZS4gU2luY2UgdGhl
IGNvbW1lbnQgaW4gdGhlIGZ1bmN0aW9uCmluZGljYXRlcyB0YWh0IHRoaXMgaXMgc3VwcG9zZWQg
dG8gYmVoYXZlIHRoZSBzYW1lIHdheSBhcyBhcm0zMiBiZWNhdXNlCml0IGhhbmRsZXMgMzItYml0
IHRhc2tzIGFsc28uCgpDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZyAjIHYzLjE2KwpGaXhlczog
NmVlMzNjMjcxMmZjICgiQVJNOiBod19icmVha3BvaW50OiBjb3JyZWN0IGFuZCBzaW1wbGlmeSBh
bGlnbm1lbnQgZml4dXAgY29kZSIpClNpZ25lZC1vZmYtYnk6IEFuZGVycyBSb3hlbGwgPGFuZGVy
cy5yb3hlbGxAbGluYXJvLm9yZz4KLS0tCiBhcmNoL2FybTY0L2tlcm5lbC9od19icmVha3BvaW50
LmMgfCAxMSArKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNCBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2tlcm5lbC9od19icmVha3BvaW50
LmMgYi9hcmNoL2FybTY0L2tlcm5lbC9od19icmVha3BvaW50LmMKaW5kZXggZGNlYjg0NTIwOTQ4
Li5lYTYxNmFkZjFjZjEgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQva2VybmVsL2h3X2JyZWFrcG9p
bnQuYworKysgYi9hcmNoL2FybTY0L2tlcm5lbC9od19icmVha3BvaW50LmMKQEAgLTUzNSwxNCAr
NTM1LDE3IEBAIGludCBod19icmVha3BvaW50X2FyY2hfcGFyc2Uoc3RydWN0IHBlcmZfZXZlbnQg
KmJwLAogCQljYXNlIDA6CiAJCQkvKiBBbGlnbmVkICovCiAJCQlicmVhazsKLQkJY2FzZSAxOgot
CQkJLyogQWxsb3cgc2luZ2xlIGJ5dGUgd2F0Y2hwb2ludC4gKi8KLQkJCWlmIChody0+Y3RybC5s
ZW4gPT0gQVJNX0JSRUFLUE9JTlRfTEVOXzEpCi0JCQkJYnJlYWs7CiAJCWNhc2UgMjoKIAkJCS8q
IEFsbG93IGhhbGZ3b3JkIHdhdGNocG9pbnRzIGFuZCBicmVha3BvaW50cy4gKi8KIAkJCWlmICho
dy0+Y3RybC5sZW4gPT0gQVJNX0JSRUFLUE9JTlRfTEVOXzIpCiAJCQkJYnJlYWs7CisJCQkvKiBG
YWxsIHRocm91Z2ggKi8KKwkJY2FzZSAxOgorCQljYXNlIDM6CisJCQkvKiBBbGxvdyBzaW5nbGUg
Ynl0ZSB3YXRjaHBvaW50LiAqLworCQkJaWYgKGh3LT5jdHJsLmxlbiA9PSBBUk1fQlJFQUtQT0lO
VF9MRU5fMSkKKwkJCQlicmVhazsKKwkJCS8qIEZhbGwgdGhyb3VnaCAqLwogCQlkZWZhdWx0Ogog
CQkJcmV0dXJuIC1FSU5WQUw7CiAJCX0KLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
