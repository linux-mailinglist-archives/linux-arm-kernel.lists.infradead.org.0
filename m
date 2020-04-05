Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1527D19EA98
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 12:51:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QIaqvlOQJ59kyMQbpwMqBd7VUs5ltydJ/Ea5XyUG/Co=; b=aDU2fZocEWSCZn
	fRf2xEnoC0oFaWFMeDaEX22c77FI8cWnVmwNJ9y0BD1TczTLMo1KC358rHGS254x48tvA8ZhuQZpS
	tfceHx/mj8Tx3MESc69MpSTcXsD/ZAhNoqqY0GLHH8RUqlSMt28Eqfw4aVmvQSTI9De42SEC0SxGh
	4SeeJ2tArljAyqAaBWg/Caw/hfWih9iFI9P9BLkJMD5P6xQm5hNQ3ATza1PHVkcmWFGzUd0g6Xd1T
	Mqr1EPlWoEI7BJ6SFl5Ov6nj1XkR9EfD8vv8GCTmms8IEOpLp0kXneRLMyZnd63Tn/nc77c2oz34B
	nFvBazAle45Kn+N9FkWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL2rt-0000Sh-M9; Sun, 05 Apr 2020 10:51:09 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL2qC-00053j-2a
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 10:49:25 +0000
Received: by mail-wr1-x443.google.com with SMTP id w10so13922303wrm.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 03:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6DTFnfqknLyGp+3XkRw9j6lN2nC/vQBz5akOO6Jq+9E=;
 b=Sb7QFNjpZ2rGEzoq7wM1Lk7paYhyv/XK6nQhniUjUBfKVh8F8l91TDW/4eWFbNQ6PV
 NpuTaGGYXEGE2k3mj9HciNVITNjj2oYfdZcDBlBj/OOMw/H3SbyCU9mv/7puMqzrzwcl
 JkOTbuaeR+IA+D/fftEk4fyAZL8V5HhnbYniBu9IWOy2xzV98zxIKcHGULO4LiQDrpiV
 7Mi+k0RVaKbj9/IPs6hiNlIQIlmn6Tb8Uqf3XmpPSQ6+7Xih5ZXo3GQfKo/5XnAVckQY
 sUCsbn0YGbwohDRM6gxJk2zFR6SrprwnI3qH2FnMeqoouOtv5OQ1yIpv9yMmcgi2jE0q
 vE9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6DTFnfqknLyGp+3XkRw9j6lN2nC/vQBz5akOO6Jq+9E=;
 b=HQTYaS0GakBLXqilY1ssBkcoQy2VuKBy6Zf+9FVluuk0/5ZAER9XmOCScd0XSXNWMO
 WSiCX+IWMlTIgY6IOvg7dmUVxktNfke0cOUte7CXIX5XO5rFKiPRqd6ENspDLB5N75qd
 pgSXlvPuyP50P1R0p3cvmT2WCwuJuXwvYRSP3zhRiSAar40fhx3gImUnaDXmxVdGMPKb
 5mNFYabrx0trZ0MqTh3mlj+IQ8o8wS2IaBp5qcqHWbR4CvrBdE1aUZf16Ew9AjUCzJbF
 AvLJftnldES+UlEf7YZBaHVsdKHceWSoChj0pnc64thYOnG6CKPuQns/JgeRJzYo4dZl
 yQcA==
X-Gm-Message-State: AGi0PuYk6lJLox6JPnlJ6UerZNOoCiq6qRquJSW6pOSNArF+1+nA7Kez
 8T/k4Q8dhyCz6TlLCOx0iIc=
X-Google-Smtp-Source: APiQypJEtqRB3M2locEeqSVQI8fHNbdDjKNYCq95ty62mPo5Q1EK5s5Pqdcn4VqhjNdpRnyQf+pwdA==
X-Received: by 2002:a5d:4bc1:: with SMTP id l1mr19797345wrt.103.1586083762850; 
 Sun, 05 Apr 2020 03:49:22 -0700 (PDT)
Received: from localhost.localdomain (91-167-199-67.subs.proxad.net.
 [91.167.199.67])
 by smtp.gmail.com with ESMTPSA id u13sm21606411wru.88.2020.04.05.03.49.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Apr 2020 03:49:22 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 6/7] arm64: configs: Enable sun50i cpufreq nvmem
Date: Sun,  5 Apr 2020 12:49:12 +0200
Message-Id: <20200405104913.22806-7-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200405104913.22806-1-peron.clem@gmail.com>
References: <20200405104913.22806-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_034924_124186_285AEBB1 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2lubmVyIEg2IG5lZWRzIHRoaXMgZHJpdmVyIHRvIGJlIGFibGUgdG8gZ2V0CnRoZSBjb3Jy
ZWN0IHNwZWVkX2JpbiByZXF1aXJlZCBmb3IgRFZGUy4KCkVuYWJsZSB0aGlzIG9wdGlvbiBpbiBh
cm02NCBkZWZjb25maWcuCgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNs
ZW1AZ21haWwuY29tPgotLS0KIGFyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcgfCAxICsKIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvY29u
Zmlncy9kZWZjb25maWcgYi9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnCmluZGV4IDRkYjIy
M2RiYzU0OS4uMjhiMjVmYzAzNDdjIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2NvbmZpZ3MvZGVm
Y29uZmlnCisrKyBiL2FyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcKQEAgLTgzLDYgKzgzLDcg
QEAgQ09ORklHX0NQVV9GUkVRX0dPVl9DT05TRVJWQVRJVkU9bQogQ09ORklHX0NQVV9GUkVRX0dP
Vl9TQ0hFRFVUSUw9eQogQ09ORklHX0NQVUZSRVFfRFQ9eQogQ09ORklHX0FDUElfQ1BQQ19DUFVG
UkVRPW0KK0NPTkZJR19BUk1fQUxMV0lOTkVSX1NVTjUwSV9DUFVGUkVRX05WTUVNPXkKIENPTkZJ
R19BUk1fQVJNQURBXzM3WFhfQ1BVRlJFUT15CiBDT05GSUdfQVJNX1NDUElfQ1BVRlJFUT15CiBD
T05GSUdfQVJNX0lNWF9DUFVGUkVRX0RUPW0KLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
