Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE60D57BD6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 08:17:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dbVdHg8uEf0iX/e8yTdcc33J2oAMNNuSg+FvJepifHA=; b=kTMQ5Q/PZv7uXv
	F61N1eewwT5g9UNrPdYhC1Zz5QnlrfFl+KalvZNZ1WPPs/Ba9C7SmjedBpBC8zNtIRtF8mSOrZ4ql
	3xaH5A3ojZZ727Zms+Rj9fZcQO3XJlT2XhbR6eYBr0NIBYzkpGB6gq+JOpICSDBtPZJmCZs2ONLSW
	9WDlyzDwyRcPLlok9P25i5y1daKc3wYIg3y1VVGFqWENTVCyZLqmj7SDfCZSJVVlDFg5ypRAz8iIj
	jm282GxqTwMMlS6BjnRFTGn4qcB/u24MF5su4jPtmMQf6U6A8r32MYEyR47zAuqSGCtof5RmtAapi
	qNFeKIOLi8Fos42vtveA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgNid-0000ay-6u; Thu, 27 Jun 2019 06:17:15 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgNiO-0000aK-DU
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 06:17:01 +0000
Received: by mail-lf1-x144.google.com with SMTP id a25so735818lfg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 23:16:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version:content-transfer-encoding;
 bh=XYEjiJTeyQ5U99X7kJjQf+Ev0bkoLJk0WjwJL25Sz9w=;
 b=NuMc6XzOORvmEEOQQTHGNq45yt74PyvbnhxiLeJ/aTXCQqrblvaW2MAXDnub436iW1
 VdZ0gdd0kpK1pdrPj0z7RuHIchRcn1vROhpFvXBMOtvDSERcpLhVbVco1/EhgJHnkIYR
 QgX2leKzsX+EKghX4/vmavhDMrwZidBAc/bLvXok9aSafOnonhW0sLXyLnfeYmPXWFsb
 U3aTB3CAqFk/FMJ/jT9kBr+EcicvVDIQX7/G6fFLKiOVFKLrTFAYjQTyVWPSzg5ukSeh
 wUF7YvBFgzWMfQvLdKzuaz7LQn+OHTs7k9qOewHunVgvcAg2YlV58lwFmCBhXJ8qhRZV
 xpDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version:content-transfer-encoding;
 bh=XYEjiJTeyQ5U99X7kJjQf+Ev0bkoLJk0WjwJL25Sz9w=;
 b=BZL1axUkW2u0Ajo7qwbmu2h5qpuIp88mdtO7LNUo4BK2Vmc+LPdbUFCgl+UrLPTfcF
 Kb9B9bvXCtg+y4XEOprEMfHfcE51FfTkFad1u/TWcVuk4xJKTqItuxxv9stu7Yl7kGkw
 tKE4xWe/MB10t5NJjw1wy5ha8HdNjz5M3AZeqlCuhafr8niTNF8K72AdB8Eas5XsrN76
 /ew74mLi+q1q0l/v+o36XMA2UQdst3Afnvvf8sVrWVyFAvEgRnvFoifvsZly5xxFzdC9
 Oj7ry7dVC2KLn0hEmkH5J3rdgx+6k8JECy7zUBtTAN94n4m9sWmKmc6gT3fM2YEB9R0Q
 noww==
X-Gm-Message-State: APjAAAWxud+/caxY7gG1QPLWViY3SRyxqBVifGyXLPCpOdaxH6fVvt+E
 B2zJy7CZmxBj6m383cvhFZc=
X-Google-Smtp-Source: APXvYqyhrNzgnfYBH/1xOQhgmByqTyp7L01t2XK4bVMNnxZxMdTuSlT5FKdEfzFMX90At4vQcYRMJQ==
X-Received: by 2002:a19:5515:: with SMTP id n21mr1063065lfe.26.1561616218618; 
 Wed, 26 Jun 2019 23:16:58 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id q6sm184064lji.70.2019.06.26.23.16.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 23:16:58 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v2 5/7] serial: imx: set_termios(): do not enable autoRTS
 if RTS is unset
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1561558293-7683-1-git-send-email-sorganov@gmail.com>
 <1561558293-7683-6-git-send-email-sorganov@gmail.com>
 <20190627054733.wssatfb2i257737m@pengutronix.de>
Date: Thu, 27 Jun 2019 09:16:57 +0300
In-Reply-To: <20190627054733.wssatfb2i257737m@pengutronix.de> ("Uwe
 \=\?utf-8\?Q\?Kleine-K\=C3\=B6nig\=22's\?\= message of "Thu,
 27 Jun 2019 07:47:33 +0200")
Message-ID: <87tvcbimcm.fsf@osv.gnss.ru>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_231700_452202_603D13AA 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
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
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JpdGVz
OgoKPiBPbiBXZWQsIEp1biAyNiwgMjAxOSBhdCAwNToxMTozMVBNICswMzAwLCBTZXJnZXkgT3Jn
YW5vdiB3cm90ZToKPj4gc2V0X3Rlcm1pb3MoKSBzaG91bGRuJ3Qgc2V0IFVDUjJfQ1RTQyBiaXQg
aWYgVUNSMl9DVFMgKD1USU9DTV9SVFMpIGlzCj4+IGNsZWFyZWQuIEFkZGVkIGNvcnJlc3BvbmRp
bmcgY2hlY2sgaW4gaW14X3VhcnRfcnRzX2F1dG8oKSB0byBmaXggdGhpcy4KPj4gCj4+IFJldmll
d2VkLWJ5OiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+Cj4+IFRlc3RlZC1i
eTogU2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPgo+PiBTaWduZWQtb2ZmLWJ5
OiBTZXJnZXkgT3JnYW5vdiA8c29yZ2Fub3ZAZ21haWwuY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMv
dHR5L3NlcmlhbC9pbXguYyB8IDMgKystCj4+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy90dHkvc2VyaWFs
L2lteC5jIGIvZHJpdmVycy90dHkvc2VyaWFsL2lteC5jCj4+IGluZGV4IGUwZjUzNjUuLjQ4Njdm
ODAgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvdHR5L3NlcmlhbC9pbXguYwo+PiArKysgYi9kcml2
ZXJzL3R0eS9zZXJpYWwvaW14LmMKPj4gQEAgLTQwNSw3ICs0MDUsOCBAQCBzdGF0aWMgdm9pZCBp
bXhfdWFydF9ydHNfaW5hY3RpdmUoc3RydWN0IGlteF9wb3J0ICpzcG9ydCwgdTMyICp1Y3IyKQo+
PiAgLyogY2FsbGVkIHdpdGggcG9ydC5sb2NrIHRha2VuIGFuZCBpcnFzIGNhbGxlciBkZXBlbmRl
bnQgKi8KPj4gIHN0YXRpYyB2b2lkIGlteF91YXJ0X3J0c19hdXRvKHN0cnVjdCBpbXhfcG9ydCAq
c3BvcnQsIHUzMiAqdWNyMikKPj4gIHsKPj4gLQkqdWNyMiB8PSBVQ1IyX0NUU0M7Cj4+ICsJaWYg
KCp1Y3IyICYgVUNSMl9DVFMpCj4+ICsJCSp1Y3IyIHw9IFVDUjJfQ1RTQzsKPj4gIH0KPgo+IEkg
d29uZGVyIGlmIHRoaXMgcGF0Y2ggaXMgb25seSBjb3JyZWN0IGluIHRoZSBwcmVzZW5jZSBvZiB0
aGUgcHJldmlvdXMKPiBwYXRjaC4gV2l0aCB0aGUgY29kZSBjdXJyZW50bHkgaW4gbWFpbmxpbmUg
aW14X3VhcnRfcnRzX2F1dG8oKSBpcyBvbmx5Cj4gY2FsbGVkIHdpdGggVUNSMl9DVFMgdW5zZXQu
CgpZZXMsIGV4YWN0bHkuCgpUaGFua3MhCgotLSBTZXJnZXkKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
