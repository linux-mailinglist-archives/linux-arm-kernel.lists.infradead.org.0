Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC201137AB1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 01:37:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2SFhrzKOr3T0U7GgYHpODYKK/6SJlXglvh0obmmNDQs=; b=eFv22OTS8xQ1s8
	iwVzrluBlE0EqhWxSf32SDD0AF+dFhwCQ0pbsoTLL1vdpcxkSN+BbKhvt76Dee0gECPeZ+za/W89L
	UvQKeieoT4ZZJA1lbggKudaMDsG+LuruKveVBEP6pfJdwKS+9gr+jXxntsu9TTkevrgFxSWET5ieb
	plqHX3Y82/yplPSTu+8n/oTy3P8g83EOaefmjYI4mjMWdoTQQoD6QC04csNMgr4vo4s104UmgoLTT
	uPFcbKfow6nylXQY0WI5UIhjCRHhvqZGd9zWX8ssJ0CqznvL/3AyQAvviqrShq0siE6Q6wyjh75C7
	gy0brvRYTNYWdALmxT+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq4mo-00009Z-03; Sat, 11 Jan 2020 00:37:54 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq4l8-0006fo-BE
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 00:36:11 +0000
Received: by mail-wr1-x441.google.com with SMTP id g17so3470126wro.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 16:36:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IE/B8lJDJdDvcxuIuFq2qqc4guWFpnttAgVt4Kc0orQ=;
 b=fgXOdmpu5/W+zrykGfg/zMG2w+1t4ZsGYpSc43DU9XF2hUtwjVQ/MrEETqF9ut4EVh
 a1Y6G5Bp1xIz27IQtrot+lw6aC/bIs+LjCD9VE6CCgzw72gubLULWOj/+UQ8c5mwEVzQ
 zEvLm7QOTJWVBFw5p7GsvOpfbI7nnBSV2rYCwHT8bfHqiLwoe/u6AdHtmzP1RdfA0yd7
 uPcM+fD7wOK12tzm+cOGaSGcjkrdUvzRtTbWb7IJm44SeLxFfASno9xUBX5JUBv7PeRJ
 JZ2qjiEuTjOEOvbMACU3hgPLjCIzU9sgd5+Y2Q2aVcpPDvqM/lsErqZ1L8PeyomWrdL1
 inTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IE/B8lJDJdDvcxuIuFq2qqc4guWFpnttAgVt4Kc0orQ=;
 b=PmZ6FCVjxMblahNwW6khziEjz/fV1CpA5wI1/XcgKfTyM4Kw5oZNemsLj4mCIqJvSe
 lpS+TILveVRbezMoh58NIO9hUGivWmcfqHKc1SQaKszm+7tWa763lFvP1n+Xe3y+MEP4
 K6A5SznqsnAvpWsMO23MRskEAtCMa7UHVfNy6cqg0CNJtcgFJh06AoqJaJ/QPWEevs7y
 3m4C2SbmqrBQ39kqug5C1KLINf+C5/NxlT71Bf12EoRbtuNH+rx68ZRzvI3c9jjczmEJ
 ACivLLzh7L/5PGmofuu0e6fgxJM+JBCR/9/HfX4nllOsCsw6iOTOA65ybsRlhwQRkgWw
 z7Ag==
X-Gm-Message-State: APjAAAUtwybEADCNKLdvUAouJBoJNiqpa/6QA7EZPVQDR/bU1iMZjNJE
 Qe2iKtM1gflutsbhphTnoaI=
X-Google-Smtp-Source: APXvYqx1bEgH4MS9+ajTliW2gTn7GRE+wVeS+fhR65QJTy4NUZDj5C+TSmgPW7YHPTjB8V+pok9aFA==
X-Received: by 2002:a05:6000:1288:: with SMTP id
 f8mr5997069wrx.66.1578702968707; 
 Fri, 10 Jan 2020 16:36:08 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id e8sm4250249wrt.7.2020.01.10.16.36.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 16:36:07 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 7/8] arm64: tegra: Device tree changes for v5.6-rc1
Date: Sat, 11 Jan 2020 01:35:52 +0100
Message-Id: <20200111003553.2411874-7-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200111003553.2411874-1-thierry.reding@gmail.com>
References: <20200111003553.2411874-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_163610_388087_420789A1 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQVJNIFNvQyBtYWludGFpbmVycywKClRoZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBjb21t
aXQgZTQyNjE3YjgyNWY4MDczNTY5ZGE3NmRjNDUxMGJmYTAxOWIxYzM1YToKCiAgTGludXggNS41
LXJjMSAoMjAxOS0xMi0wOCAxNDo1Nzo1NSAtMDgwMCkKCmFyZSBhdmFpbGFibGUgaW4gdGhlIEdp
dCByZXBvc2l0b3J5IGF0OgoKICBnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tl
cm5lbC9naXQvdGVncmEvbGludXguZ2l0IHRhZ3MvdGVncmEtZm9yLTUuNi1hcm02NC1kdAoKZm9y
IHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIGY0MWYzNGRkY2VlNjc5NjQxZmY3ZDE3N2IzNzU5
Nzg0NGQ4MmQ2MzQ6CgogIGFybTY0OiB0ZWdyYTogQWxsb3cgYm9vdGxvYWRlciB0byBjb25maWd1
cmUgRXRoZXJuZXQgTUFDIG9uIEpldHNvbiBUWDIgKDIwMjAtMDEtMTAgMTc6MDQ6MjkgKzAxMDAp
CgpUaGFua3MsClRoaWVycnkKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KYXJtNjQ6IHRlZ3JhOiBEZXZpY2UgdHJlZSBjaGFu
Z2VzIGZvciB2NS42LXJjMQoKVGhlc2UgcGF0Y2hlcyBkbyBzb21lIGNsZWFudXAgdG8gZXhpc3Rp
bmcgbm9kZXMsIGFkZCB0aGUgbWVtb3J5CnN1YnN5c3RlbSBvbiBUZWdyYTE4NiBhbmQgVGVncmEx
OTQgYXMgd2VsbCBhcyB0aGUgRlVTRSBhbmQgQVBCIE1JU0MKbm9kZXMgb24gVGVncmExOTQuIFRo
ZXJlIGFyZSBhbHNvIGEgZmV3IGFkZGl0aW9ucyB0byB0aGUgSmV0c29uIE5hbm8KZGV2aWNlIHRy
ZWUgdG8gZW5hYmxlIGFkZGl0aW9uYWwgZmVhdHVyZXMgYW5kIHRoZSBmb3JjZSByZWNvdmVyeQpi
dXR0b24gb24gdGhlIEpldHNvbiBBR1ggWGF2aWVyIG5vdyBwcm9kdWNlcyBhIGtleSBjb2RlIHRo
YXQgaXMKYWN0dWFsbHkgdmFsaWQuIEZpbmFsbHksIGFuIGFsaWFzIGlzIGFkZGVkIGZvciB0aGUg
RXRoZXJuZXQgY2FyZCBvbgpKZXRzb24gVFgyIHRvIGFsbG93IGZpcm13YXJlIHRvIGZpbmQgaXQg
YW5kIHBhc3MgYSBNQUMgYWRkcmVzcyB2aWEKZGV2aWNlIHRyZWUuCgotLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkpDIEt1byAo
MSk6CiAgICAgIGFybTY0OiB0ZWdyYTogQWRkIGZ1c2UvYXBibWlzYyBub2RlIG9uIFRlZ3JhMTk0
CgpQZXRlciBSb2JpbnNvbiAoMSk6CiAgICAgIGFybTY0OiB0ZWdyYTogQWxsb3cgYm9vdGxvYWRl
ciB0byBjb25maWd1cmUgRXRoZXJuZXQgTUFDIG9uIEpldHNvbiBUWDIKClRhbcOhcyBTesWxY3Mg
KDIpOgogICAgICBhcm02NDogdGVncmE6IEVuYWJsZSBQV00gZmFuIG9uIEpldHNvbiBOYW5vCiAg
ICAgIGFybTY0OiB0ZWdyYTogRW5hYmxlIFNESU8gb24gSmV0c29uIE5hbm8gTS4yIEtleSBFCgpU
aGllcnJ5IFJlZGluZyAoNyk6CiAgICAgIGFybTY0OiB0ZWdyYTogTGV0IHRoZSBFTUMgaGFyZHdh
cmUgdXNlIHRoZSBFTUMgY2xvY2sKICAgICAgYXJtNjQ6IHRlZ3JhOiBSZW5hbWUgRU1DIG9uIFRl
Z3JhMTMyCiAgICAgIGFybTY0OiB0ZWdyYTogQWRkIGludGVycnVwdCBmb3IgbWVtb3J5IGNvbnRy
b2xsZXIgb24gVGVncmExODYKICAgICAgYXJtNjQ6IHRlZ3JhOiBBZGQgZXh0ZXJuYWwgbWVtb3J5
IGNvbnRyb2xsZXIgb24gVGVncmExODYKICAgICAgYXJtNjQ6IHRlZ3JhOiBBZGQgdGhlIG1lbW9y
eSBzdWJzeXN0ZW0gb24gVGVncmExOTQKICAgICAgYXJtNjQ6IHRlZ3JhOiBNYWtlIFhVU0Igbm9k
ZSBjb25zaXN0ZW50IHdpdGggdGhlIHJlc3QKICAgICAgYXJtNjQ6IHRlZ3JhOiBSZWRlZmluZSBm
b3JjZSByZWNvdmVyeSBrZXkgb24gSmV0c29uIEFHWCBYYXZpZXIKCiBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL252aWRpYS90ZWdyYTEzMi5kdHNpICAgICAgICAgICB8ICA0ICstCiBhcmNoL2FybTY0L2Jv
b3QvZHRzL252aWRpYS90ZWdyYTE4Ni1wMzMxMC5kdHNpICAgICB8ICAxICsKIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvbnZpZGlhL3RlZ3JhMTg2LmR0c2kgICAgICAgICAgIHwgMzQgKysrKysrKy0tLQog
YXJjaC9hcm02NC9ib290L2R0cy9udmlkaWEvdGVncmExOTQtcDI4ODguZHRzaSAgICAgfCAgNCAr
KwogYXJjaC9hcm02NC9ib290L2R0cy9udmlkaWEvdGVncmExOTQtcDI5NzItMDAwMC5kdHMgfCAg
MiArLQogYXJjaC9hcm02NC9ib290L2R0cy9udmlkaWEvdGVncmExOTQuZHRzaSAgICAgICAgICAg
fCA1NiArKysrKysrKysrKysrKysrKwogYXJjaC9hcm02NC9ib290L2R0cy9udmlkaWEvdGVncmEy
MTAtcDM0NTAtMDAwMC5kdHMgfCA3MyArKysrKysrKysrKysrKysrKysrKysrCiA3IGZpbGVzIGNo
YW5nZWQsIDE2NCBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
