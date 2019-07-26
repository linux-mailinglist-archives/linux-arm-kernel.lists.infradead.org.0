Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1147647B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 13:29:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZLt/hWi8Er3Nf1ixhfBU2/FM8hLxkjWtNXLmK9z76zo=; b=dusAQGKlkyLREU
	1cE6TjW/9EcRUBo6PQlEwUDBlwwXqpJKs5dVM107ZUPimdOudhWeQkEz88fSLG222GPrHxzQSrDTU
	3Y6rNVFKD58Kwf6LaZLp8hSPlS8vDRKrR2ZMZyF2jf9p8BP1cuKjPwj1skY8xjortZYRwGroUYRWR
	VaUpAeep4ttzTA42bG7TFxHTCpzR9+x2eU4G1IICnO/FjjAtIqIkLF5LIxvcRQ49R5Hiule9X1y2s
	+LfgMb8qm2HRYwM5H7m8BKVV8jTrNt7pAzqtT/gNxqdabQeoHLh7GVb4I2Nimla74wPyLxzG8WD+7
	GIl3yGgsmEajnIAxHmpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqyPc-0002xF-6X; Fri, 26 Jul 2019 11:29:24 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqyNu-0001p9-R3
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 11:27:40 +0000
Received: by mail-lf1-x143.google.com with SMTP id c9so36798149lfh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 04:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WJ4oeV5ZLHJeESLEdUy9aN7H7bQ/Va6Qh1QrIFzI99g=;
 b=xG8ocYYAMVyrT+fps7Ci3OpR1wI6YXEKPlizWNxS60+b9FbANZFGs/wC2hhclrgCmv
 55v4U/Zf+1LhEPq7LC1Y1cEQQHtwFwuUvCj5CNmzqYyzQct5/fVjkoTGnd10sSfnC5V0
 Hf+hL1vZACofkVZT/824XWihTsoLfe4Thp+o/40y9kSdsqD/HUVj++MnnfFRl7qYzdvF
 +5ExUCQXug6wUu6+Z3l6cuXe+29DSYpXZRRB9Zrfg69tWctJwzzxCBftUTTRdBIa8MhL
 bg/B/cPhoW0/TOldXnTgHzrzw5FfOpbMXBFcTYGl9OaxoQgUc7kD+JzWlPamB6tU+ytk
 0Kvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WJ4oeV5ZLHJeESLEdUy9aN7H7bQ/Va6Qh1QrIFzI99g=;
 b=EBPY9fQjWMsJ14a8J+M7q9/OJE+XuKu0qd556tA372Rj9Bc+PO5NADeoYFiwnEH5wj
 ++Dq6VdAw5PITR9kMdNEAWZLjNewdnMBpAEvhGHjDsbb5Nqdw1mZpuVdgpNCnyK9qNoY
 fM6G5rMYXG8LyGhPOnWxKSh97g3UBl6r+HAbgRmPF+bBx4d901C/sr/oAYQRR+SXE3Ec
 M9n8rteRQVWJB4hEYf1wV6UNDec0EA3KwgEWgMPxYmwoZq3Bu9NLshs4Th+UPYoTJlXj
 x1MDik8CoS/axI81+CJQpXIEegC/5azkLMvDtqt46d6qFz+jGTGGKBMRIDo1+vx2n8qs
 iqEw==
X-Gm-Message-State: APjAAAUHwhlR7/+yA1Uu13Z7i3YwninMXvfbB4kaHWA+vqdUZp3OWI7g
 O00j/Onjrmhcq3+6SLvwdQd0wQ==
X-Google-Smtp-Source: APXvYqy19sSMEhoiwI1rduoX5SnYPS74HR9JH6CK0bVMOr3rdq3xpST/Q6wPbjIyPh4IZqzaDa1XzA==
X-Received: by 2002:ac2:518d:: with SMTP id u13mr9418914lfi.40.1564140456984; 
 Fri, 26 Jul 2019 04:27:36 -0700 (PDT)
Received: from localhost (c-243c70d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.60.36])
 by smtp.gmail.com with ESMTPSA id c1sm8257268lfh.13.2019.07.26.04.27.36
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 04:27:36 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: will@kernel.org,
	mark.rutland@arm.com
Subject: [PATCH] arm: perf: Mark expected switch fall-through
Date: Fri, 26 Jul 2019 13:27:32 +0200
Message-Id: <20190726112732.19257-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_042739_055695_A03EC5EB 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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

V2hlbiBmYWxsLXRocm91Z2ggd2FybmluZ3Mgd2FzIGVuYWJsZWQgYnkgZGVmYXVsdCwgZDkzNTEy
ZWYwZjBlCigiTWFrZWZpbGU6IEdsb2JhbGx5IGVuYWJsZSBmYWxsLXRocm91Z2ggd2FybmluZyIp
LCB3ZSBjb3VsZCBzZWUgdGhlCmZvbGxvd2luZyB3YXJuaW5ncyB3YXMgc3RhcnRpbmcgdG8gc2hv
dyB1cC4gSG93ZXZlciwgdGhpcyB3YXMgb3JpZ2luYWxseQppbnRyb2R1Y2VkIGluIGNvbW1pdCA2
ZWUzM2MyNzEyZmMgKCJBUk06IGh3X2JyZWFrcG9pbnQ6IGNvcnJlY3QgYW5kCnNpbXBsaWZ5IGFs
aWdubWVudCBmaXh1cCBjb2RlIikuIENvbW1pdCBkOTY4ZDJiODAxZDggKCJBUk06IDc0OTcvMToK
aHdfYnJlYWtwb2ludDogYWxsb3cgc2luZ2xlLWJ5dGUgd2F0Y2hwb2ludHMgb24gYWxsIGFkZHJl
c3NlcyIpIHdhcwp3cml0dGVuIHdpdGggdGhlIGludGVudCB0byBhbGxvdyBzaW5nbGUtYnl0ZSB3
YXRjaHBvaW50cyBvbiBhbGwKYWRkcmVzc2VzIGJ1dCBmb3Jnb3QgdG8gbW92ZSAnY2FzZSAxOicg
ZG93biBiZWxvdyAnY2FzZSAyOicuCgouLi9hcmNoL2FybS9rZXJuZWwvaHdfYnJlYWtwb2ludC5j
OiBJbiBmdW5jdGlvbiDigJhod19icmVha3BvaW50X2FyY2hfcGFyc2XigJk6Ci4uL2FyY2gvYXJt
L2tlcm5lbC9od19icmVha3BvaW50LmM6NjA5Ojc6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1h
eSBmYWxsCiB0aHJvdWdoIFstV2ltcGxpY2l0LWZhbGx0aHJvdWdoPV0KICAgIGlmIChody0+Y3Ry
bC5sZW4gPT0gQVJNX0JSRUFLUE9JTlRfTEVOXzIpCiAgICAgICBeCi4uL2FyY2gvYXJtL2tlcm5l
bC9od19icmVha3BvaW50LmM6NjExOjM6IG5vdGU6IGhlcmUKICAgY2FzZSAzOgogICBefn5+Ci4u
L2FyY2gvYXJtL2tlcm5lbC9od19icmVha3BvaW50LmM6NjEzOjc6IHdhcm5pbmc6IHRoaXMgc3Rh
dGVtZW50IG1heSBmYWxsCiB0aHJvdWdoIFstV2ltcGxpY2l0LWZhbGx0aHJvdWdoPV0KICAgIGlm
IChody0+Y3RybC5sZW4gPT0gQVJNX0JSRUFLUE9JTlRfTEVOXzEpCiAgICAgICBeCi4uL2FyY2gv
YXJtL2tlcm5lbC9od19icmVha3BvaW50LmM6NjE1OjM6IG5vdGU6IGhlcmUKICAgZGVmYXVsdDoK
ICAgXn5+fn5+fgoKUmV3b3JrIHNvICdjYXNlIDE6JyBhcmUgbmV4dCB0byAnY2FzZSAzOicgYW5k
IGFsc28gYWRkICcvKiBGYWxsIHRocm91Z2gKKi8nIHNvIHRoYXQgdGhlIGNvbXBpbGVyIGRvZXNu
J3Qgd2FybiBhYm91dCBmYWxsLXRocm91Z2guCgpDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZyAj
IHYzLjE2CkZpeGVzOiA2ZWUzM2MyNzEyZmMgKCJBUk06IGh3X2JyZWFrcG9pbnQ6IGNvcnJlY3Qg
YW5kIHNpbXBsaWZ5IGFsaWdubWVudCBmaXh1cCBjb2RlIikKU2lnbmVkLW9mZi1ieTogQW5kZXJz
IFJveGVsbCA8YW5kZXJzLnJveGVsbEBsaW5hcm8ub3JnPgotLS0KIGFyY2gvYXJtL2tlcm5lbC9o
d19icmVha3BvaW50LmMgfCA0ICsrKy0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9rZXJuZWwvaHdfYnJlYWtwb2lu
dC5jIGIvYXJjaC9hcm0va2VybmVsL2h3X2JyZWFrcG9pbnQuYwppbmRleCBhZjhiOGUxNWY1ODku
LmMxNGQ1MDY5NjliYSAxMDA2NDQKLS0tIGEvYXJjaC9hcm0va2VybmVsL2h3X2JyZWFrcG9pbnQu
YworKysgYi9hcmNoL2FybS9rZXJuZWwvaHdfYnJlYWtwb2ludC5jCkBAIC02MDMsMTUgKzYwMywx
NyBAQCBpbnQgaHdfYnJlYWtwb2ludF9hcmNoX3BhcnNlKHN0cnVjdCBwZXJmX2V2ZW50ICpicCwK
IAljYXNlIDA6CiAJCS8qIEFsaWduZWQgKi8KIAkJYnJlYWs7Ci0JY2FzZSAxOgogCWNhc2UgMjoK
IAkJLyogQWxsb3cgaGFsZndvcmQgd2F0Y2hwb2ludHMgYW5kIGJyZWFrcG9pbnRzLiAqLwogCQlp
ZiAoaHctPmN0cmwubGVuID09IEFSTV9CUkVBS1BPSU5UX0xFTl8yKQogCQkJYnJlYWs7CisJCS8q
IEZhbGwgdGhyb3VnaCAqLworCWNhc2UgMToKIAljYXNlIDM6CiAJCS8qIEFsbG93IHNpbmdsZSBi
eXRlIHdhdGNocG9pbnQuICovCiAJCWlmIChody0+Y3RybC5sZW4gPT0gQVJNX0JSRUFLUE9JTlRf
TEVOXzEpCiAJCQlicmVhazsKKwkJLyogRmFsbCB0aHJvdWdoICovCiAJZGVmYXVsdDoKIAkJcmV0
ID0gLUVJTlZBTDsKIAkJZ290byBvdXQ7Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
