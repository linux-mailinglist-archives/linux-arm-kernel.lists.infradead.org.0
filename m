Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 649B716FA30
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 10:04:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H7+ou6Zpg2XYUnlWxLuBe0A/i5ruqgDMiTbgePWPvrY=; b=dnM7CYjUKT+81k
	FtZ3e4bIi3I/qszEfGa2VN2T7mORVhdWAOAAEkB9OK3eDYOBGqIyn53CJYFiXPOAWHmEGnjv+91KU
	tFgm3zRlzdla55kDAKXDFdTaUtiU/znYGgb8CoqoGqI42ETqlDViO3dYmZm/LVernBoI9TBcZeJGG
	4vcTgsSTfWaophWoNMYdEK+tgLi5dOFO9XuTgdaKEhX/oao8lU/NCA5VQ98zP/GBFlabYYXuh+wa2
	nvZZQhPIOwATU1FMuYccDjUU4Eo/TWZrAZpoqq5pS8O/Cg797PdZXLgZ7ASgWGn7JvDcsInBfLJ1g
	3rJVTM1BW4jG52NNcEow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6scL-00042S-7M; Wed, 26 Feb 2020 09:04:33 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6sbw-0003s2-Kl
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 09:04:10 +0000
Received: by mail-lf1-x144.google.com with SMTP id z9so1396976lfa.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 01:04:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9eHZsWhf/jI0CQUdI3eAEsrWZ3jvP1O0Z9niC9Xk7qU=;
 b=Bt6GKp40/528dIego2DNE20IvNRKTqPzT65q2zEeWe8bApszPZNzCNzQHavKUIlb18
 s+1muF3PFfBeFE+MaReQimvdA9Fv2waQG910ug5Ho5cAGCDy6s1muuOhbXZIEsqopIxo
 ROAfEOa8ZKwhQtZuT4CQ4w+SaaefQl0ksiptXkiuVhdBcl1WSiZ1xoZCMn0cdLsJwXuU
 SvNlaweTXadrtLfbr8GB0l4xqRRjhEhZ8u3KpWUPzj+Zv6ye1Un1ys9FbsGUgVVAs0UZ
 aLf+tSIZfeTqGSun8S+4tCeQ+vZ9RZJfVXWOutLfH1ZgMsg6gIvldFORNJfo00O05Ibv
 vFCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9eHZsWhf/jI0CQUdI3eAEsrWZ3jvP1O0Z9niC9Xk7qU=;
 b=MXD7fIPl9Zk2ikH+jIXYpFGTjhaAIP4DlDRdEreitiJMN02n237grgUSryPDRPzy1i
 uzAbjMAx4p2XMo96clrOfZhTWcAY2JtUm2Ejwq+ONdzBqL+PY6hEUrUJyt55dCw5WGUt
 EL20BFSPDDQWVPnCCJNX9J+ll4X7X5RlLxENs1oZVdsBSTTo6fUvA3ETujHLD/l/1ICA
 QwDnCijP//VotXDxtRaqvt8TfZ2Y7Kk4m6qr9rRQJSHWJOMubOcieZaj9+/K2gmazU5w
 q9THi7/giZLdHkR3mqpsxd66ApolQEULsMJVRWLavGU8BilY16IXwIyjD5IH4sCK0wUa
 jWfg==
X-Gm-Message-State: APjAAAWGWEBG5Mfehy26SNf4Q0peS6agKaIPGw07+GVdUMXHnmaJigMG
 mk5r5dX7uG+e18QoTNoKwtY=
X-Google-Smtp-Source: APXvYqwrbSOXZUu09UI9/5ecj+GU4pY2j83Euw++/lMlFFAzDz7ZkhK3fSH2SPIK4olLQspKKPsbDQ==
X-Received: by 2002:a05:6512:3e5:: with SMTP id
 n5mr1887701lfq.55.1582707845096; 
 Wed, 26 Feb 2020 01:04:05 -0800 (PST)
Received: from localhost.localdomain (dsl-trebng21-b048b1-221.dhcp.inet.fi.
 [176.72.177.221])
 by smtp.googlemail.com with ESMTPSA id k1sm777927lji.43.2020.02.26.01.04.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 01:04:04 -0800 (PST)
From: =?UTF-8?q?Joni=20Lepist=C3=B6?= <joni.m.lepisto@gmail.com>
To: robh+dt@kernel.org,
	mark.rutland@arm.com
Subject: [PATCH] ARM: dts: zynq: Add support for Z-turn Lite board
Date: Wed, 26 Feb 2020 11:03:36 +0200
Message-Id: <20200226090337.16065-1-joni.m.lepisto@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_010408_701529_8FAB4E13 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joni.m.lepisto[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?UTF-8?q?Joni=20Lepist=C3=B6?= <joni.m.lepisto@gmail.com>,
 devicetree@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGEgZHRzIGZvciBNWUlSIFotdHVybiBMaXRlIGFuZCByZXNwZWN0aXZlIHRhcmdldCBpbiBN
YWtlZmlsZQpiYXNlZCBvbiB0aGUgZXhpc3RpbmcgWi10dXJuIGR0cyB3aGljaCBpcyBjb21wYXRp
YmxlIGV4Y2VwdCBmb3IKbWVtb3J5IHNpemUuCgpTaWduZWQtb2ZmLWJ5OiBKb25pIExlcGlzdMO2
IDxqb25pLm0ubGVwaXN0b0BnbWFpbC5jb20+Ci0tLQogYXJjaC9hcm0vYm9vdC9kdHMvTWFrZWZp
bGUgICAgICAgICAgICB8ICAgMSArCiBhcmNoL2FybS9ib290L2R0cy96eW5xLXp0dXJuLWxpdGUu
ZHRzIHwgMTE1ICsrKysrKysrKysrKysrKysrKysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDEx
NiBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vYm9vdC9kdHMvenlu
cS16dHVybi1saXRlLmR0cwoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL01ha2VmaWxl
IGIvYXJjaC9hcm0vYm9vdC9kdHMvTWFrZWZpbGUKaW5kZXggZDY1NDZkMjY3NmI5Li41NmIxYmNl
OTI3NDQgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL01ha2VmaWxlCisrKyBiL2FyY2gv
YXJtL2Jvb3QvZHRzL01ha2VmaWxlCkBAIC0xMjQxLDYgKzEyNDEsNyBAQCBkdGItJChDT05GSUdf
QVJDSF9aWU5RKSArPSBcCiAJenlucS16Yzc3MC14bTAxMy5kdGIgXAogCXp5bnEtemVkLmR0YiBc
CiAJenlucS16dHVybi5kdGIgXAorCXp5bnEtenR1cm4tbGl0ZS5kdGIgXAogCXp5bnEtenliby5k
dGIgXAogCXp5bnEtenliby16Ny5kdGIKIGR0Yi0kKENPTkZJR19NQUNIX0FSTUFEQV8zNzApICs9
IFwKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3p5bnEtenR1cm4tbGl0ZS5kdHMgYi9h
cmNoL2FybS9ib290L2R0cy96eW5xLXp0dXJuLWxpdGUuZHRzCm5ldyBmaWxlIG1vZGUgMTAwNjQ0
CmluZGV4IDAwMDAwMDAwMDAwMC4uOTZjMGJhYmU4MjY3Ci0tLSAvZGV2L251bGwKKysrIGIvYXJj
aC9hcm0vYm9vdC9kdHMvenlucS16dHVybi1saXRlLmR0cwpAQCAtMCwwICsxLDExNSBAQAorLy8g
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKKy8qCisgKiAgQ29weXJpZ2h0IChDKSAy
MDE1IEFuZHJlYSBNZXJlbGxvIDxhZG5yZWEubWVyZWxsb0BnbWFpbC5jb20+CisgKiAgQ29weXJp
Z2h0IChDKSAyMDE3IEFsZXhhbmRlciBHcmFmIDxhZ3JhZkBzdXNlLmRlPgorICogIENvcHlyaWdo
dCAoQykgMjAyMCBKb25pIExlcGlzdMO2IDxqb25pLm0ubGVwaXN0b0BnbWFpbC5jb20+CisgKgor
ICogIEJhc2VkIG9uIHp5bnEtemVkLmR0cyB3aGljaCBpczoKKyAqICBDb3B5cmlnaHQgKEMpIDIw
MTEgLSAyMDE0IFhpbGlueAorICogIENvcHlyaWdodCAoQykgMjAxMiBOYXRpb25hbCBJbnN0cnVt
ZW50cyBDb3JwLgorICoKKyAqLworCisvZHRzLXYxLzsKKy9pbmNsdWRlLyAienlucS03MDAwLmR0
c2kiCisKKy8geworCW1vZGVsID0gIlp5bnEgWi1UdXJuIExpdGUgTVlJUiBCb2FyZCI7CisJY29t
cGF0aWJsZSA9ICJteWlyLHp5bnEtenR1cm4tbGl0ZSIsICJ4bG54LHp5bnEtNzAwMCI7CisKKwlh
bGlhc2VzIHsKKwkJZXRoZXJuZXQwID0gJmdlbTA7CisJCXNlcmlhbDAgPSAmdWFydDE7CisJCXNl
cmlhbDEgPSAmdWFydDA7CisJCW1tYzAgPSAmc2RoY2kwOworCX07CisKKwltZW1vcnlAMCB7CisJ
CWRldmljZV90eXBlID0gIm1lbW9yeSI7CisJCXJlZyA9IDwweDAgMHgyMDAwMDAwMD47CisJfTsK
KworCWNob3NlbiB7CisJCXN0ZG91dC1wYXRoID0gInNlcmlhbDA6MTE1MjAwbjgiOworCX07CisK
KwlncGlvLWxlZHMgeworCQljb21wYXRpYmxlID0gImdwaW8tbGVkcyI7CisJCXVzci1sZWQxIHsK
KwkJCWxhYmVsID0gInVzci1sZWQxIjsKKwkJCWdwaW9zID0gPCZncGlvMCAweDAgMHgxPjsKKwkJ
CWRlZmF1bHQtc3RhdGUgPSAib2ZmIjsKKwkJfTsKKworCQl1c3ItbGVkMiB7CisJCQlsYWJlbCA9
ICJ1c3ItbGVkMiI7CisJCQlncGlvcyA9IDwmZ3BpbzAgMHg5IDB4MT47CisJCQlkZWZhdWx0LXN0
YXRlID0gIm9mZiI7CisJCX07CisJfTsKKworCWdwaW8ta2V5cyB7CisJCWNvbXBhdGlibGUgPSAi
Z3Bpby1rZXlzIjsKKwkJYXV0b3JlcGVhdDsKKwkJSzEgeworCQkJbGFiZWwgPSAiSzEiOworCQkJ
Z3Bpb3MgPSA8JmdwaW8wIDB4MzIgMHgxPjsKKwkJCWxpbnV4LGNvZGUgPSA8MHg2Nj47CisJCQl3
YWtldXAtc291cmNlOworCQkJYXV0b3JlcGVhdDsKKwkJfTsKKwl9OworfTsKKworJmNsa2Mgewor
CXBzLWNsay1mcmVxdWVuY3kgPSA8MzMzMzMzMzM+OworfTsKKworJmdlbTAgeworCXN0YXR1cyA9
ICJva2F5IjsKKwlwaHktbW9kZSA9ICJyZ21paS1pZCI7CisJcGh5LWhhbmRsZSA9IDwmZXRoZXJu
ZXRfcGh5PjsKKworCWV0aGVybmV0X3BoeTogZXRoZXJuZXQtcGh5QDAgeworCQlyZWcgPSA8MHgw
PjsKKwl9OworfTsKKworJnNkaGNpMCB7CisJc3RhdHVzID0gIm9rYXkiOworfTsKKworJnVhcnQw
IHsKKwlzdGF0dXMgPSAib2theSI7Cit9OworCismdWFydDEgeworCXN0YXR1cyA9ICJva2F5IjsK
K307CisKKyZ1c2IwIHsKKwlzdGF0dXMgPSAib2theSI7CisJZHJfbW9kZSA9ICJob3N0IjsKK307
CisKKyZjYW4wIHsKKwlzdGF0dXMgPSAib2theSI7Cit9OworCismaTJjMCB7CisJc3RhdHVzID0g
Im9rYXkiOworCWNsb2NrLWZyZXF1ZW5jeSA9IDw0MDAwMDA+OworCisJc3RsbTc1QDQ5IHsKKwkJ
c3RhdHVzID0gIm9rYXkiOworCQljb21wYXRpYmxlID0gImxtNzUiOworCQlyZWcgPSA8MHg0OT47
CisJfTsKKworCWFjY2VsZXJvbWV0ZXJANTMgeworCQljb21wYXRpYmxlID0gImFkaSxhZHhsMzQ1
IiwgImFkeGwzNDUiLCAiYWRpLGFkeGwzNHgiLCAiYWR4bDM0eCI7CisJCXJlZyA9IDwweDUzPjsK
KwkJaW50ZXJydXB0LXBhcmVudCA9IDwmaW50Yz47CisJCWludGVycnVwdHMgPSA8MHgwIDB4MWUg
MHg0PjsKKwl9OworfTsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
