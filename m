Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7F04E5D9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:24:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uaDmgXvDPqcC/VruhtE6SShWgoAjLkCA/Vw/+awT6r8=; b=s84sZZS4beFZKu
	PuAy22T6wLbFazlrRC/zO8+SG3CPkNMsPJFTz0RCd/wo5GF3P1iHrjzq6iiGN5wvHayyNSl0yixsc
	HGvzYPQtn38Mv6tvwWQJW8MX70bGaPbDxfc9SvH/8uYTP0QGNczyiIp5alFMqzIpmCi0TQkNPREAS
	jXtTuR0S6i6Csq6qz5b9h0s4ZsDPim5LvKpDaD/VeT2+IOBQ+Jf3983zeJwbYgRoHAN1nD43F+K1K
	d+UqUgdDc144Z874VsZq8lyTnUnFQZZE+iVCKwBpqHGOW+q9vTSmxREIXS5P8V3EicYY7rlPWlFY0
	fOdwps5f3AuUaNZjmV0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGiS-0003vg-0k; Fri, 21 Jun 2019 10:24:20 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heGVL-0006av-TO
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 10:10:55 +0000
Received: by mail-lf1-x141.google.com with SMTP id 136so4616797lfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 03:10:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lsi49V042X5SWmg6BSidCYgRSFhgOwzB87kQ9VdAW8o=;
 b=qzp0hTRFCDIDeoedMK9BpRKxqzS6C1pI6+esntEEcYfmqtwkzp5NXC4jYaXwteqygK
 CqSGWHVG4k4v7+yE3LAeTBcAiHNN3io20g6hwRYSaf/EXL/SVMtxrXQ3vxqEm414BIyD
 VX3HQASBQiKO21CBcyZ89utPkHakicR2L24Bp9iCgOUH2vMaBe+ZrNcIpq3rp3jvECHg
 pwiCLWYionUUf99aMOat0gj+kNg30X0z4PreIKxyEZPb6RwYutO+rw4X8aMFqNlueZ/g
 AyuzlddU1T6d9qZujNvPgdwxfvDMJgzhZCvpnN3VPDESyZdPzg5Q3w5LGBo8QjNpC4+r
 +LBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lsi49V042X5SWmg6BSidCYgRSFhgOwzB87kQ9VdAW8o=;
 b=ohrgcS1saVSYjGJb2QdLdW+RkQQSD3eOB08QJc1aL/RA+6ZIxo99GbkCtdLy7gM8OB
 D5CcpHdKvW3JJApeiyBsMgT/LtriO0zwObXhUyHhqiBZrx09AAdjoFe4TbJ3olPD5mpP
 4WTcK8AkXiCNMDHLTgy6Tg6K1BiFAuH29sudG5Al3Oy5wOdZ7uDnpw2VirEzmUFtaCM6
 OzKPMU1Hmxosz+qykvjzlQtv3y6KZjcJJZ27CIQZNgh90mOTY1v1CKrJpcSi1k/izOFf
 NwDRuQZIm2s9xFdi2eo+JS9rLeoCefJiq814ayS+4lz8GdN8foU6BbP057xorPrOJiMN
 ttTQ==
X-Gm-Message-State: APjAAAVDOwyTF4mHC59Pk91lvINegxyw0A4tltITsyxHhiABcpXiQLsL
 MHb+athwTFgX5oToG3FBPyA=
X-Google-Smtp-Source: APXvYqx/9ppnZW4xbdyg4lcYqhaoRIjkyukoC0ZmlidFFnVnqDqiiVdEvCJdVq1ZJqgC6LBzCFWoQg==
X-Received: by 2002:a05:6512:15a:: with SMTP id
 m26mr24145742lfo.71.1561111845230; 
 Fri, 21 Jun 2019 03:10:45 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:a315:5445:5300:a5e4:32fe:c6e4:d5eb])
 by smtp.googlemail.com with ESMTPSA id r24sm365944ljb.72.2019.06.21.03.10.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 21 Jun 2019 03:10:44 -0700 (PDT)
From: =?UTF-8?q?Pawe=C5=82=20Chmiel?= <pawel.mikolaj.chmiel@gmail.com>
To: kgene@kernel.org
Subject: [RESEND,
 v2] cpufreq: s5pv210: Don't flood kernel log after cpufreq change
Date: Fri, 21 Jun 2019 12:10:43 +0200
Message-Id: <20190621101043.10549-1-pawel.mikolaj.chmiel@gmail.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_031048_171466_B989F19B 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pawel.mikolaj.chmiel[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 viresh.kumar@linaro.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 krzk@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBjb21taXQgcmVwbGFjZXMgcHJpbnRrIHdpdGggcHJfZGVidWcsIHNvIHdlIGRvbid0IGZs
b29kIGtlcm5lbCBsb2cuCgpTaWduZWQtb2ZmLWJ5OiBQYXdlxYIgQ2htaWVsIDxwYXdlbC5taWtv
bGFqLmNobWllbEBnbWFpbC5jb20+CkFja2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnpr
QGtlcm5lbC5vcmc+Ci0tLQpDaGFuZ2VzIGZyb20gdjE6CiAgLSBBZGRlZCBBY2tlZC1ieQotLS0K
IGRyaXZlcnMvY3B1ZnJlcS9zNXB2MjEwLWNwdWZyZXEuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvY3B1
ZnJlcS9zNXB2MjEwLWNwdWZyZXEuYyBiL2RyaXZlcnMvY3B1ZnJlcS9zNXB2MjEwLWNwdWZyZXEu
YwppbmRleCA1YjQyODk0NjBiYzkuLmM3YjdkMWU2NWIwOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9j
cHVmcmVxL3M1cHYyMTAtY3B1ZnJlcS5jCisrKyBiL2RyaXZlcnMvY3B1ZnJlcS9zNXB2MjEwLWNw
dWZyZXEuYwpAQCAtNDgxLDcgKzQ4MSw3IEBAIHN0YXRpYyBpbnQgczVwdjIxMF90YXJnZXQoc3Ry
dWN0IGNwdWZyZXFfcG9saWN5ICpwb2xpY3ksIHVuc2lnbmVkIGludCBpbmRleCkKIAkJCQlhcm1f
dm9sdCwgYXJtX3ZvbHRfbWF4KTsKIAl9CiAKLQlwcmludGsoS0VSTl9ERUJVRyAiUGVyZiBjaGFu
Z2VkW0wlZF1cbiIsIGluZGV4KTsKKwlwcl9kZWJ1ZygiUGVyZiBjaGFuZ2VkW0wlZF1cbiIsIGlu
ZGV4KTsKIAogZXhpdDoKIAltdXRleF91bmxvY2soJnNldF9mcmVxX2xvY2spOwotLSAKMi4xNy4x
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
