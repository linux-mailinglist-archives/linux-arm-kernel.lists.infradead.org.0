Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 757391E2062
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 13:04:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sxeWdyhbV4CdUG0UNSoEJwRe6sz1FQlL525p7sWjuCw=; b=V2kncY5eGpbCCm
	YFhN8oeR3iAwUdDw4KA2n3ygLHC+S5CgmJHlYAoG6fu5rroBUXzHwrz9hQZUMYtezU+9BFVTAgGsb
	jPeh51quglWepiI9ogu/EyVtc8Pm86PD2d+5+J1AnsdIwUzbS8RIdUPjsaT/UKneAxcQrLBxiyI7r
	vkYWsT7IGPdzfUoQ33FU05ILUvOYNxz/+MVgihgpL6sSV0coWfz+Wk8R2kYRumzKhqcw+AOZnvRCK
	CvP5niRL8bjr/vWjsZZ5XeMGX0I5ZdRJDwfTcGsiEbChF1oq7fMx+JZWqZ0WP/0HfOpEL2oCRMlBD
	tuHWN5Y68ORGW5mLWK2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdXNI-0004Pk-Hf; Tue, 26 May 2020 11:04:00 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdXN7-0004OF-89
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 11:03:50 +0000
Received: by mail-wm1-x342.google.com with SMTP id u13so2716508wml.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 04:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WNmMCHQhQQzWJi0EZ9sZ2eNrgpixzlI5wsbtnbpPOeQ=;
 b=W8H3MQBsUXQUTKWEZv7Q4Wk5HwDwJdE5VIPVKx+zWM7nL/hLhk8fUgVZoZNICPIvG0
 1zoT0s+z/2Uv5zk25wqMi7ut5qOG+bwb93BOIqTvneSorUvGx/1fr4EsD7ZLWH6ZYPrz
 W+Z5ITMvhz3cPFDKQ6h7AU2ur68mjrW9SdlT7nW34AgQX712TTPrfUe9ZKbVpLEBaaDY
 i8ycYtToxxp1HYjSM45zR2OTK5bVlhZ7+DDBMndag9ROlbixbMr2v4u7ADw9zMFby959
 DE2F9pb9UXKhPQY4TGyfX/g/IgP17wjspC8azvkAo3B2XRw9fGf2qbJcb1ywsootcNWv
 O4AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WNmMCHQhQQzWJi0EZ9sZ2eNrgpixzlI5wsbtnbpPOeQ=;
 b=WZy4wY4cFz1H9T+zmG1N4ZKTLlrOZso62dTUGknaVd5MP163PQ70buC2/EwOP9PWn0
 g+nil1x2wvzUrGjeapaNEUWEsgQLXLhdqbYEp0ocHhhyUfxT9xGFIMuzzXNq3PQ0x2Hk
 j8uAPbO5VV6jd384RZ3cirDuzHUSVv4m6v+Gg26jlsDKKVWUQkzem6R8YOLnhqXKppgS
 tDbpvoxZZ/KaGTgXoUFiPGx/QiR9hHB2QMrooF1Jsd+CgXAPFq9rHt3A6shMizaBc/Zz
 fqgA9xiyelzN4HsU31mCePhy82wQkXzHcUaZ+b1nIyTYhjsjSCjVCmwjpi7mY38WljAw
 5U3g==
X-Gm-Message-State: AOAM532H34HtOsXJXhScgTHr1ivwpVNLa6U7ITtJJRHt2jCQfykuNCM7
 snOqNR15MbD9+BwofFzfa4M=
X-Google-Smtp-Source: ABdhPJy1dn8nJ7EBF1K3qfcolfl264laLlQTJniTWhVfeQbgu6WJ9Veq4i5pRVpVi/dlQexl8ZDiDA==
X-Received: by 2002:a05:600c:2041:: with SMTP id
 p1mr960165wmg.152.1590491026217; 
 Tue, 26 May 2020 04:03:46 -0700 (PDT)
Received: from skynet.lan (172.red-88-15-120.dynamicip.rima-tde.net.
 [88.15.120.172])
 by smtp.gmail.com with ESMTPSA id l204sm11196246wmf.19.2020.05.26.04.03.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 04:03:45 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: tsbogend@alpha.franken.de, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] MIPS: BCM63xx: fix 6328 boot selection bit
Date: Tue, 26 May 2020 13:03:24 +0200
Message-Id: <20200526110324.1324754-1-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_040349_295520_505ACFAA 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TUlTQ19TVFJBUF9CVVNfQk9PVF9TRUxfU0hJRlQgaXMgMTggYWNjb3JkaW5nIHRvIEJyb2FkY29t
J3MgR1BMIHNvdXJjZSBjb2RlLgoKU2lnbmVkLW9mZi1ieTogw4FsdmFybyBGZXJuw6FuZGV6IFJv
amFzIDxub2x0YXJpQGdtYWlsLmNvbT4KLS0tCiBhcmNoL21pcHMvaW5jbHVkZS9hc20vbWFjaC1i
Y202M3h4L2JjbTYzeHhfcmVncy5oIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvbWlwcy9pbmNsdWRlL2Fz
bS9tYWNoLWJjbTYzeHgvYmNtNjN4eF9yZWdzLmggYi9hcmNoL21pcHMvaW5jbHVkZS9hc20vbWFj
aC1iY202M3h4L2JjbTYzeHhfcmVncy5oCmluZGV4IGJjMzQ0NGNkNGVmMi4uOWNlYjVlNzI4ODlm
IDEwMDY0NAotLS0gYS9hcmNoL21pcHMvaW5jbHVkZS9hc20vbWFjaC1iY202M3h4L2JjbTYzeHhf
cmVncy5oCisrKyBiL2FyY2gvbWlwcy9pbmNsdWRlL2FzbS9tYWNoLWJjbTYzeHgvYmNtNjN4eF9y
ZWdzLmgKQEAgLTEzNjcsOCArMTM2Nyw4IEBACiAjZGVmaW5lIE1JU0NfU1RSQVBCVVNfNjMyOF9S
RUcJCTB4MjQwCiAjZGVmaW5lIFNUUkFQQlVTXzYzMjhfRkNWT19TSElGVAk3CiAjZGVmaW5lIFNU
UkFQQlVTXzYzMjhfRkNWT19NQVNLCQkoMHgxZiA8PCBTVFJBUEJVU182MzI4X0ZDVk9fU0hJRlQp
Ci0jZGVmaW5lIFNUUkFQQlVTXzYzMjhfQk9PVF9TRUxfU0VSSUFMCSgxIDw8IDI4KQotI2RlZmlu
ZSBTVFJBUEJVU182MzI4X0JPT1RfU0VMX05BTkQJKDAgPDwgMjgpCisjZGVmaW5lIFNUUkFQQlVT
XzYzMjhfQk9PVF9TRUxfU0VSSUFMCSgxIDw8IDE4KQorI2RlZmluZSBTVFJBUEJVU182MzI4X0JP
T1RfU0VMX05BTkQJKDAgPDwgMTgpCiAKIC8qKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqCiAgKiBfUkVHIHJlbGF0
aXZlIHRvIFJTRVRfUENJRQotLSAKMi4yNi4yCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
