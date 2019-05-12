Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7F41ADA2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 19:47:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CenH5nAaPFMME+5SM9VS+ULMZzY8loOUQZ9r4laIO+s=; b=L2a2bPca09D9rT
	2m5cR83BAaewh/AuAesoIkqwSGD9I+sDedzqVMsORjkvSpAgUlC+MMAbiHcLg+mkueMWrrvFgnW+s
	zNF/WEl4whZXtGycccQx+Ml/i0SbA49cbXs9NwcgCYy5USNiU9iLkH83VMLXbwv7OcSp3hxtVdL/e
	tCVzKkCatnjkutZwGQzupQANDnn/IhXiJgd4SA8WvuXqCmDasE+dcG1ewawOY8GSi/4jyI5nY/BAG
	65bYmDtil0EzBKKrk1IewLcm0kRd/UrDMHpLKEGlvfaufyf1dXfyRPQzEKkpQ1SrDmIVDTWPO89lT
	ccQueE91/sS1WL0wjDhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPsYv-0006hV-Dz; Sun, 12 May 2019 17:47:01 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPsYG-00061Z-EP
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 17:46:22 +0000
Received: by mail-wm1-x341.google.com with SMTP id y3so2266270wmm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 May 2019 10:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EXpuW1H5E6JQJvkk+bffS60LiMlJ6FTGBpL+lRXA+/0=;
 b=C87Q+0KZQadrQrFy/za95yC+j5F9HIcOk+MD/C9HIXG+ocEQapjM4S2ITPa0BLHET0
 TveZfiYQ/0GIB0Q3RDpOCPvI8Dq5yBr0wNvFMerC0oF3tyITvUzD/EMkVuawaWcZUeJW
 Losyzn7J5obpJCtjMEmo4hNYOj5ULqh8Mdo7ZOuLLhrEEMff8cwte3uzAy4fMbRvy94O
 YdhlCq/6M2Vyhu/IoB60ud/+9jDueB89Y3+rz/lRGzS5vw/O/YtZa+uLqVQsxXQ+yUt3
 yyK0Fznt12O+GzSnJ+cMNNwKLT0DYr5HX1QPF3OWWx5m5t/RszjCKfW0+mrczm8pWipQ
 Jn0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EXpuW1H5E6JQJvkk+bffS60LiMlJ6FTGBpL+lRXA+/0=;
 b=FBfQaSN8YfDaqdmLaxtZgJVR3Nq3Y1cVaOyaVRZjSeRWBPOkgjfvWWCy2ukF2jjnmC
 CPjz6qKCFfoOjKb/vT1vpha0dx8G0eQjFf23tjqPf9YwU69HNEmIB/WfvNQS9GhvJ7sh
 GPIEH7Q9Wo7rwi1EZv8TdZ7IVne4WVBxV9XlqTDz+z6S1FCDf40PfSstpsqEswQIHPn6
 0JJimNzQma3XALd93Kz6gQysmc0hsg1XSUKH3abd3pQ1AmnFoouFzSfuLZbaE0M8xN+R
 CCuQKU4wVdSY0KgheB0qnGfx0BtywvilvJYa7DhSRIM8Onu51rp+8FGdQi8HiJj+spPu
 cA7g==
X-Gm-Message-State: APjAAAUczB+urv2srvjFXnsQHRyFc6S5LF/jmvHPAAiVNEFA+kEKa4Cx
 RgGAjr9kTxpQ+WTDF30hdiU=
X-Google-Smtp-Source: APXvYqxhB7vibCkxRA4FPfP8y01EU8vmUJIZfLKUu16/cqguHPZ7Vjvf/kWOGAn7GjdIKhCBtdMUHg==
X-Received: by 2002:a1c:7a12:: with SMTP id v18mr13528180wmc.69.1557683179040; 
 Sun, 12 May 2019 10:46:19 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id d14sm9090558wre.78.2019.05.12.10.46.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 10:46:18 -0700 (PDT)
From: peron.clem@gmail.com
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 3/8] dt-bindings: gpu: mali-midgard: Add H6 mali gpu
 compatible
Date: Sun, 12 May 2019 19:46:03 +0200
Message-Id: <20190512174608.10083-4-peron.clem@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190512174608.10083-1-peron.clem@gmail.com>
References: <20190512174608.10083-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_104620_486550_7817D96E 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KClRoaXMgYWRkIHRo
ZSBINiBtYWxpIGNvbXBhdGlibGUgaW4gdGhlIGR0LWJpbmRpbmdzIHRvIGxhdGVyIHN1cHBvcnQK
c3BlY2lmaWMgaW1wbGVtZW50YXRpb24uCgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24g
PHBlcm9uLmNsZW1AZ21haWwuY29tPgpSZXZpZXdlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2Vy
bmVsLm9yZz4KLS0tCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9ncHUvYXJtLG1hbGktbWlkZ2Fy
ZC50eHQgICAgICAgICB8IDkgKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2dwdS9hcm0sbWFsaS1taWRnYXJkLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9ncHUvYXJtLG1hbGktbWlkZ2FyZC50eHQKaW5kZXggMmU4YmJjZTM1Njk1
Li40YmYxN2UxY2Y1NTUgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9ncHUvYXJtLG1hbGktbWlkZ2FyZC50eHQKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2dwdS9hcm0sbWFsaS1taWRnYXJkLnR4dApAQCAtMTUsNiArMTUsNyBAQCBS
ZXF1aXJlZCBwcm9wZXJ0aWVzOgogICAgICsgImFybSxtYWxpLXQ4NjAiCiAgICAgKyAiYXJtLG1h
bGktdDg4MCIKICAgKiB3aGljaCBtdXN0IGJlIHByZWNlZGVkIGJ5IG9uZSBvZiB0aGUgZm9sbG93
aW5nIHZlbmRvciBzcGVjaWZpY3M6CisgICAgKyAiYWxsd2lubmVyLHN1bjUwaS1oNi1tYWxpIgog
ICAgICsgImFtbG9naWMsbWVzb24tZ3htLW1hbGkiCiAgICAgKyAicm9ja2NoaXAscmszMjg4LW1h
bGkiCiAgICAgKyAicm9ja2NoaXAscmszMzk5LW1hbGkiCkBAIC00OSw5ICs1MCwxNSBAQCBWZW5k
b3Itc3BlY2lmaWMgYmluZGluZ3MKIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogCiBUaGUgTWFs
aSBHUFUgaXMgaW50ZWdyYXRlZCB2ZXJ5IGRpZmZlcmVudGx5IGZyb20gb25lIFNvQyB0bwotYW5v
dGhlci4gSW4gb3JkZXIgdG8gYWNjb21vZGF0ZSB0aG9zZSBkaWZmZXJlbmNlcywgeW91IGhhdmUg
dGhlIG9wdGlvbgorYW5vdGhlci4gSW4gb3JkZXIgdG8gYWNjb21tb2RhdGUgdGhvc2UgZGlmZmVy
ZW5jZXMsIHlvdSBoYXZlIHRoZSBvcHRpb24KIHRvIHNwZWNpZnkgb25lIG1vcmUgdmVuZG9yLXNw
ZWNpZmljIGNvbXBhdGlibGUsIGFtb25nOgogCistICJhbGx3aW5uZXIsc3VuNTBpLWg2LW1hbGki
CisgIFJlcXVpcmVkIHByb3BlcnRpZXM6CisgIC0gY2xvY2tzIDogcGhhbmRsZXMgdG8gY29yZSBh
bmQgYnVzIGNsb2NrcworICAtIGNsb2NrLW5hbWVzIDogbXVzdCBjb250YWluICJjb3JlIiBhbmQg
ImJ1cyIKKyAgLSByZXNldHM6IHBoYW5kbGUgdG8gR1BVIHJlc2V0IGxpbmUKKwogLSAiYW1sb2dp
YyxtZXNvbi1neG0tbWFsaSIKICAgUmVxdWlyZWQgcHJvcGVydGllczoKICAgLSByZXNldHMgOiBT
aG91bGQgY29udGFpbiBwaGFuZGxlcyBvZiA6Ci0tIAoyLjE3LjEKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
