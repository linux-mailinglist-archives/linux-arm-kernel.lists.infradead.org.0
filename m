Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D97B36FC0B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 11:22:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5UkgtY9MAQ4jeqezepyqmmr/oy+yYGnBVB7AmNZPW2Y=; b=OLO8MygB2IdTw/
	rxeGPCfP/qGsBXJRHS+Iu6rPJolSznLmmmVvnKwdcckcjwJwce3G7Xhvtc0fYa7XH+izv3tY001Xc
	1abRkYuGlAFmT0Roia7wylhxN5dSXqq77XcT0tGUtMHEUh+eeTwwqXagG1LF/bDS+L2CcXpa5nODh
	v/ICHubgichZeTpk2XixrcW+1iqKYYMqjDBeawuHFDawJyw/U/CeYLvBCHv7KE/0aYX2K2HtSdk1x
	rUJH9qP8O/AcfvCUoSRRAXuI+3nQnUwJ2QFgTojduDqSGDBTZHKptr9BccpUJUt2QkZhCP9lHqL/s
	L4JYDAZQ3Gunuhrf862Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpUWm-0005fQ-EN; Mon, 22 Jul 2019 09:22:40 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpUWT-0005Tb-Pb
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 09:22:23 +0000
Received: by mail-lj1-x242.google.com with SMTP id m23so36808624lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 02:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lrWYZGqJXzSxKADpLuyahH23cD3MUUQeJThT2mI2Whc=;
 b=depTRLXJ/ZmYHWhXEMVfUAAryrh6TYc+k7bN9TkX3l0j7uKhu0wKRH4ZK6BDbimDPt
 I5eu3yyL04yoaAH8Y8jOkcqszxrfAZtHM+rtui7QOHWbJQ+JHXU79RTlR1LZVxoNCXWa
 wrVaqnu25zkGwC/762zdYlPadRxWNMyHBKUwCVULp7g5j9whk/r0gTyff7tuqAnlpFKC
 wpvcHLyL1vIT0S1gbDRvQCtLEEDTVCfHXflx57E/+Ck8nj2wiwjXBLhBSlk7lxGYTRyg
 N/yeTNXx+cnNK7KqwOxeXhiR++6HLEy+xcuWGrXVj76DxKJV/4qEh8l/G598Y+LlPwWT
 y68A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lrWYZGqJXzSxKADpLuyahH23cD3MUUQeJThT2mI2Whc=;
 b=YeB5CGqB4EIevq5TrntTKxrsxy9j+xqSfUtM1/MAUh+7dcI9o8GJLGHHSacmeyR2Bj
 qOQ1vPw3I1sxiz/BnOpp4SCAk+4O9LLHNxv8dffPNOo3N0qgEn8/mqhZMffg0vUt7ypV
 t9cUf8iD/TNYwOVuqFSwhDT7xII2wuPYdqloZlq/uLEiFFUaB9zIXlPgMNMryg8ey/A+
 qF3Cr2C1ack4v3d0zXkLAmLNzpnnhaaH0JFwCUatcW8bbzB6JBxYjCQH1eiUix03wx6l
 nfMPu+UPSS0PqlViwAKWoiDourLiTJ0ONm9cyjcSEGM6dZyi+RuiJID23tPNuh/CYoVF
 2MEw==
X-Gm-Message-State: APjAAAVo61q6DdGAnG92z5BHtkyOLBF21TpyWtYnKVeQBhtQI3p6o3Uv
 qXapH6/wmjJs8CEmlxl8WOs=
X-Google-Smtp-Source: APXvYqwPyJK2i33PLD/7pimqBkGh9JZClfOytaE32uS94uzJXSr83ogFfrmup5Kx18y0Vl75SV7hqg==
X-Received: by 2002:a2e:8847:: with SMTP id z7mr35982100ljj.51.1563787340123; 
 Mon, 22 Jul 2019 02:22:20 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id b68sm8425088ljb.0.2019.07.22.02.22.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 22 Jul 2019 02:22:19 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v5 0/3] serial: imx: fix RTS and RTS/CTS handling
Date: Mon, 22 Jul 2019 12:22:07 +0300
Message-Id: <1563787330-1394-1-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <20190614072801.3187-1-s.hauer@pengutronix.de>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_022221_855739_EBA3E618 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

VGhpcyBpcyByZWJhc2Ugb2YgdjMgb24gdG9wIG9mICd0dHktbmV4dCcsIHRvIGdldCByaWQgb2Yg
Y29tbWl0cyB0aGF0CmFyZSBhbHJlYWR5IGFkb3B0ZWQgdG8gbWFpbmxpbmUuCgpSVFMgc2lnbmFs
IGFuZCBSVFMvQ1RTIGhhbmRzaGFrZSBoYW5kbGluZyBoYWQgYSBmZXcgcHJvYmxlbXMgdGhlc2UK
cGF0Y2hlcyBmaXguCgpJbiBhZGRpdGlvbiwgbWlub3IgY2xlYW51cHMgYXJlIG1hZGUgdG8gdGhl
IGludm9sdmVkIGNvZGUuCgpDaGFuZ2Vsb2c6CgogIHY1OgoKICAgICAqIGltcHJvdmVkIGNvbW1p
dCBkZXNjcmlwdGlvbiBhbmQgYWRkZWQgbW9yZSBjb21tZW50cyBmb3IKICAgICAgICJzZXJpYWw6
IGlteDogc2V0X3Rlcm1pb3MoKTogZG8gbm90IGVuYWJsZSBhdXRvUlRTIGlmIFJUUyBpcwogICAg
ICAgdW5zZXQiIGFzIHN1Z2dlc3RlZCBieQogICAgICAgVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xl
aW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KICAgICAgIGFuZCBhZGRlZCBjb3JyZXNwb25kaW5n
ICJSZXZpZXdlZC1ieToiCgogIHY0OgoKICAgICAgKiByZWJhc2VkIG9uIHRvcCBvZiAndHR5LW5l
eHQnLCB0byBnZXQgcmlkIG9mIGNvbW1pdHMgdGhhdAogICAgICAgIGFyZSBhbHJlYWR5IGFkb3B0
ZWQgdG8gbWFpbmxpbmUuCgogIHYzOgoKICAgICAgKiBJbXByb3ZlZCBjb21tZW50cyBpbiAic2Vy
aWFsOiBpbXg6IHNldF9tY3RybCgpOiBjb3JyZWN0bHkKICAgICAgICByZXN0b3JlIGF1dG9SVFMg
c3RhdGUiLCBhcyBzdWdnZXN0ZWQgYnkgVXdlIEtsZWluZS1Lw7ZuaWcKICAgICAgICA8dS5rbGVp
bmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgoKICB2MjoKCiAgICAgICogQXBwZW5kZWQ6ICJSZXZp
ZXdlZC1ieToiIGFuZCAiVGVzdGVkLWJ5OiIKICAgICAgICBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJA
cGVuZ3V0cm9uaXguZGU+CgogICAgICAqIFJlbW92ZWQgIlJGQyIgZnJvbSBoZWFkZXIKCiAgdjE6
CgogICAgICAqIEZpeGVkIGluICJzZXJpYWw6IGlteDogc2V0X3Rlcm1pb3MoKTogcHJlc2VydmUg
UlRTIHN0YXRlIgoKLSsJdWNyMiA9IFVDUjJfU1JTVCB8IFVDUjJfSVJUUzsKKysJdWNyMiB8PSBV
Q1IyX1NSU1QgfCBVQ1IyX0lSVFM7CgogICAgICAgIGFzIG5vdGljZWQgYnkgTG90aGFyIFdhw59t
YW5uIDxMV0BLQVJPLWVsZWN0cm9uaWNzLmRlPgoKICAgICAgKiBGaXhlZCBpbiAic2VyaWFsOiBp
bXg6IHNldF90ZXJtaW9zKCk6IHByZXNlcnZlIFJUUyBzdGF0ZSIKCi0rCXVjcjIgPSBvbGRfdWNy
MiAmIChVQ1IyX1RYRU4gfCBVQ1IyX1JYRU4gfCBVQ1IyX0FURU4gfCBVQ1IyX0NUU0MpOworKwl1
Y3IyID0gb2xkX3VjcjIgJiAoVUNSMl9UWEVOIHwgVUNSMl9SWEVOIHwgVUNSMl9BVEVOIHwgVUNS
Ml9DVFMpOwoKICAgICAgICBhcyB0aGUgZml4IGZvciB0aGUgcHJvYmxlbSBmb3VuZCBieSBTYXNj
aGEgSGF1ZXIKICAgICAgICA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4KCiAgICAgICogUmVvcmRl
cmVkOgoKICAgICAgICBzZXJpYWw6IGlteDogc2V0X3Rlcm1pb3MoKTogcHJlc2VydmUgUlRTIHN0
YXRlCiAgICAgICAgc2VyaWFsOiBpbXg6IHNldF90ZXJtaW9zKCk6IGRvIG5vdCBlbmFibGUgYXV0
b1JUUyBpZiBSVFMgaXMgdW5zZXQKCiAgICAgICAgYXMgdGhlIGxhdHRlciBtYWtlcyBzZW5zZSBv
bmx5IHByb3ZpZGVkIHRoZSBmb3JtZXIgaXMgYWxyZWFkeQogICAgICAgIGFwcGxpZWQuCgpTZXJn
ZXkgT3JnYW5vdiAoMyk6CiAgc2VyaWFsOiBpbXg6IHNldF90ZXJtaW9zKCk6IGRvIG5vdCBlbmFi
bGUgYXV0b1JUUyBpZiBSVFMgaXMgdW5zZXQKICBzZXJpYWw6IGlteDogc2V0X21jdHJsKCk6IGNv
cnJlY3RseSByZXN0b3JlIGF1dG9SVFMgc3RhdGUKICBzZXJpYWw6IGlteDogZ2V0IHJpZCBvZiBp
bXhfdWFydF9ydHNfYXV0bygpCgogZHJpdmVycy90dHkvc2VyaWFsL2lteC5jIHwgMjggKysrKysr
KysrKysrKysrKysrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyks
IDEwIGRlbGV0aW9ucygtKQoKLS0KMi4xMC4wLjEuZzU3YjAxYTMKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
