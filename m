Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B7A771AA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 20:53:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gX1Yyum/i/Qducu09C1+bgn3Kwq/3qskhs6eOZh4erQ=; b=rLBfExz1TAXWXf
	j21o9zKpPVwgNob36KIE64xEkFGpon7LJyYEWx8XrqlnxchWUu+0Ur/qrNq4BOYeN4AYlHzo52SGe
	yRP7FbkKeqjNJ+FmOZNAq7jsWCDkbo8lYXC2dma1HHQT3ji5q1f6rcNGpSvyH6rgxSZ6V5o1PrQWb
	0NL/w6jUHqJE+0BlewiqORTvmLL6rzeVgGqTRM8fouh2uLHw7xVY4hFYpr7Ws1ONT6DiHh07jd5pk
	YydkWaiDu/hHe9LmHp9w6CivigYriefl15hleksLLWBJCb8+wkWGdaOBGFEl3eSMiyrxKAsBUcQdW
	QctMkQsS/4wZ92DQumkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr5Li-0000XK-7d; Fri, 26 Jul 2019 18:53:50 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr5LE-0000MP-I8
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 18:53:21 +0000
Received: by mail-lf1-x144.google.com with SMTP id c19so37750943lfm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 11:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hlO4j1hJuCOJd1h1Hw9Dr7/Fw6jxqbEeyEo5OnuF750=;
 b=E11A35JTqUGpf4NcDswflSPTMqH1wKUo6F85Dt+BpKH7fAYIyjF8Sa4+YR0f7rv1K9
 ib8/bOdc1Xc/Z7GtXBwOcd08XODaU2FiWa8pIx8sADZsDOvRQx6VX3sTTNK1EP1FkxUG
 LHZm73i0+b8QoCt0RtCOmpf2nVjViGLe23SwmpVgf5lsBpiz1VzjmMHCJPHg9FNZ/whY
 IzW8yLWqbBPJoAt/boN1JsfCOvSdBkdwVfo+UHmQvJjh/RvGrLnP6fO99NzFFs5ENPov
 gtU2IgZe2wgNGLPwDTl9uiVn+ZcFQh3gvuHegKWVxr35SxE1ullWi3tuqYQUNA0MaiR2
 Q3kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hlO4j1hJuCOJd1h1Hw9Dr7/Fw6jxqbEeyEo5OnuF750=;
 b=VsERqXzga/VEp8ZO4VXswigl6DbX2BSrrr0Bs0hFXvtphsJmuBtWUST0VIBUHXJ2AT
 ftAzmcaak4maIf19uaCqJrSrwkUC72Q9d40qz8Ppbt6rM2kSvqpsSjFPM97hE+OIT/ID
 2C3cUAT/L/mv2/Y5xwwtPzXRbJGfDqJJNVmr8oE1yeebptLW0G1w6CO2ujJBEJY9owXy
 maj0Pltu+CjL2DQm6eGPJOv4Snn2aDo0dSykEwUe5RPxjZoJ+JHtU/sjuRxpiZ2ytpTJ
 8EmhX7yOM6bh83IladOi6oy4/iwv69pn8I0TKisH63D2h2J0Ld+HUPnzHHv1bG1z04Rg
 Bamg==
X-Gm-Message-State: APjAAAVdSyCfRw2z+6Fd947YRn+GRkHoSMNDZPzh1wrSENW0kNg5wqRs
 HK8HOsqw9zAcryWf/bia2g0=
X-Google-Smtp-Source: APXvYqylyhgwhQzIZbM8sF6YYj/UW0wfnrPMmm+VrH6WhYCCqZA9ezpHdKMq03NlQv0gUDOJ8STjXw==
X-Received: by 2002:a19:c887:: with SMTP id y129mr45791747lff.73.1564167198917; 
 Fri, 26 Jul 2019 11:53:18 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id u15sm10254810lji.61.2019.07.26.11.53.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 26 Jul 2019 11:53:18 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v7 1/3] serial: imx: set_termios(): do not enable autoRTS if
 RTS is unset
Date: Fri, 26 Jul 2019 21:52:39 +0300
Message-Id: <1564167161-3972-2-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1564167161-3972-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1564167161-3972-1-git-send-email-sorganov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_115320_599497_C06BA0D9 
X-CRM114-Status: GOOD (  12.15  )
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
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Sergey Organov <sorganov@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG9uJ3QgbGV0IHJlY2VpdmVyIGhhcmR3YXJlIGF1dG9tYXRpY2FsbHkgY29udHJvbCBSVFMgb3V0
cHV0IGlmIGl0CndhcyByZXF1ZXN0ZWQgdG8gYmUgaW5hY3RpdmUuCgpUbyBlbnN1cmUgdGhpcywg
c2V0X3Rlcm1pb3MoKSBzaG91bGRuJ3Qgc2V0IFVDUjJfQ1RTQyBiaXQgaWYgVUNSMl9DVFMKKD1U
SU9DTV9SVFMpIGlzIGNsZWFyZWQuIEFkZGVkIGNvcnJlc3BvbmRpbmcgY2hlY2sgaW4gaW14X3Vh
cnRfcnRzX2F1dG8oKQp0byBmaXggdGhpcy4KCkFja2VkLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8
dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgpSZXZpZXdlZC1ieTogU2FzY2hhIEhhdWVy
IDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPgpUZXN0ZWQtYnk6IFNhc2NoYSBIYXVlciA8cy5oYXVl
ckBwZW5ndXRyb25peC5kZT4KU2lnbmVkLW9mZi1ieTogU2VyZ2V5IE9yZ2Fub3YgPHNvcmdhbm92
QGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL3R0eS9zZXJpYWwvaW14LmMgfCA3ICsrKysrKy0KIDEg
ZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL3R0eS9zZXJpYWwvaW14LmMgYi9kcml2ZXJzL3R0eS9zZXJpYWwvaW14LmMKaW5k
ZXggNTdkNmU2Yi4uMzJmMzZkOCAxMDA2NDQKLS0tIGEvZHJpdmVycy90dHkvc2VyaWFsL2lteC5j
CisrKyBiL2RyaXZlcnMvdHR5L3NlcmlhbC9pbXguYwpAQCAtNDA1LDcgKzQwNSwxMiBAQCBzdGF0
aWMgdm9pZCBpbXhfdWFydF9ydHNfaW5hY3RpdmUoc3RydWN0IGlteF9wb3J0ICpzcG9ydCwgdTMy
ICp1Y3IyKQogLyogY2FsbGVkIHdpdGggcG9ydC5sb2NrIHRha2VuIGFuZCBpcnFzIGNhbGxlciBk
ZXBlbmRlbnQgKi8KIHN0YXRpYyB2b2lkIGlteF91YXJ0X3J0c19hdXRvKHN0cnVjdCBpbXhfcG9y
dCAqc3BvcnQsIHUzMiAqdWNyMikKIHsKLQkqdWNyMiB8PSBVQ1IyX0NUU0M7CisJLyoKKwkgKiBP
bmx5IGxldCByZWNlaXZlciBjb250cm9sIFJUUyBvdXRwdXQgaWYgd2Ugd2VyZSBub3QgcmVxdWVz
dGVkIHRvIGhhdmUKKwkgKiBSVFMgaW5hY3RpdmUgKHdoaWNoIHRoZW4gc2hvdWxkIHRha2UgcHJl
Y2VkZW5jZSkuCisJICovCisJaWYgKCp1Y3IyICYgVUNSMl9DVFMpCisJCSp1Y3IyIHw9IFVDUjJf
Q1RTQzsKIH0KIAogLyogY2FsbGVkIHdpdGggcG9ydC5sb2NrIHRha2VuIGFuZCBpcnFzIG9mZiAq
LwotLSAKMi4xMC4wLjEuZzU3YjAxYTMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
