Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F351F1595
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 11:38:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nUrerT54J5FeykdVEAAdtyvm1g/3lAU9pvT7QEIOcjk=; b=bvDXhPWsSXewFT
	KW/bjykcMYr1jG7hI2sZ55itfii91dLy1BsyZwwp/M9g1dZEXE/1rwNa5Auyy0kRbiDKtuRDVPL03
	niJHpxCSzBgqTfhcY9vExtTzjUWN87UNp1hVYgtIKsBDJ//Mr5kEV9JjBJ/5RcV/kqFY50K0JrVBx
	Zxqtr5QJaiywosGE9HJ6Lc9oEh0Z4DoEgcFR+HmuB6l7PQo8mnDIryut/8ShHIOiC6ZDSJKIEi9TZ
	QLU6Zv6KF2lV7QC/neRImcPWK3mlsUReJVKg6c8W1dWSw1TTzax2Fpa98v5w41BR1fvutcwLQOmiX
	clIlWopHpdF+H/sqMdSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiEEC-0007qj-5W; Mon, 08 Jun 2020 09:38:00 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiEDy-0007pk-AF
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 09:37:47 +0000
Received: by mail-lf1-x142.google.com with SMTP id x27so9774475lfg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 02:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ny0JxnPXcJXac2OR2OWEhERQQoH+5/D2pWVNYL9vVk8=;
 b=onHkleCwATZOMGYDjhSuzJ0rFsl4YAteJzmq0AvhB7ek2ryDJGPSCcNzVMmGgFZdlC
 odgBCcI51L14zhpg2BIrcYMm9XIL5O6lvI1Nf9CI0ruDoL3EDokARPgavii+LXg69kqF
 Z8dlU1gG+7GNN0nn7yblZLE6BefYV+4DKjlWUi0RcLcowv4TXwRRhsPvmjnF9VCWLzr0
 9hvM8LIuf0hC6ar9Nlg2by/EoX/bzRxChgYvm3MhoGQb//wArBVULiPAL/wdsz9kXewg
 cBDi4LdGskguvD1l0lBM+sqg8yTeqkdLdHy7oVyhrne4l9MqvcemVd6xGoAMAcQXWEzH
 q0Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ny0JxnPXcJXac2OR2OWEhERQQoH+5/D2pWVNYL9vVk8=;
 b=U2jCpCKKNOXEam1Hi2KlUkQJBbo0J0QtKiQ+iMfm9cIItf5f5DwQMUbWKSdnqEmAg/
 kMQI/1KxE0qBOoSqs9ohAyPu4IfDcclcbUxyTecNrrYSRPschW3BSasUsg/KvSpOHbud
 HSrj2D2jNvT6HwCTOdarksq2Q1JTVvv0rhJLqDJ8zWwM+kMVawkUyjkvhlik9jNnLqXY
 /VlzfzoyTYk0Pxx57l1xqCrstkae+qerhHgjbmS2GQQuDT87lBv6fhQg1RT5+u0ac1g6
 fxGsX0hVdJSShyeQbLfG9WLbGGZ11Jg0ACiTasXccVPIj3RlkrKTL5MHPH/h6EFQS9Jf
 IC7Q==
X-Gm-Message-State: AOAM5302kPg+L1xWrlhqvXGrUqRl0DOhVQngR+njgz4V/FZQKPUIzqC6
 qz/TnKfFErsZcM4rZSIW0mc=
X-Google-Smtp-Source: ABdhPJySP35fNdlQ9WuMcsvfGhYNlzorF+R1VNwyz1QNu2THZnM2eGoazbzMHsMEf/WpPiKTYP/WMQ==
X-Received: by 2002:a05:6512:488:: with SMTP id
 v8mr12258642lfq.205.1591609063937; 
 Mon, 08 Jun 2020 02:37:43 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id s28sm4259671lfs.3.2020.06.08.02.37.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 02:37:42 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH] ARM: dts: BCM5301X: Specify switch ports for Luxul devices
Date: Mon,  8 Jun 2020 11:37:33 +0200
Message-Id: <20200608093733.20190-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_023746_388630_1FA8A2BE 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zajec5[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zajec5[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Hauke Mehrtens <hauke@hauke-m.de>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKQWxsIHRob3NlIGRldmlj
ZXMgdXNlIHN0YW5kYXJkIEJDTTUzMDExIChyZXYgNSkgb3IgQkNNNTMwMTIgKHJldiAwKS4KClNp
Z25lZC1vZmYtYnk6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KLS0tCiBhcmNo
L2FybS9ib290L2R0cy9iY200NzA4LWx1eHVsLXhhcC0xNTEwLmR0cyAgfCAyNSArKysrKysrKysr
KysKIGFyY2gvYXJtL2Jvb3QvZHRzL2JjbTQ3MDgtbHV4dWwteHdjLTEwMDAuZHRzICB8IDIwICsr
KysrKysrKysKIGFyY2gvYXJtL2Jvb3QvZHRzL2JjbTQ3MDgxLWx1eHVsLXhhcC0xNDEwLmR0cyB8
IDIwICsrKysrKysrKysKIGFyY2gvYXJtL2Jvb3QvZHRzL2JjbTQ3MDgxLWx1eHVsLXh3ci0xMjAw
LmR0cyB8IDQwICsrKysrKysrKysrKysrKysrKysKIGFyY2gvYXJtL2Jvb3QvZHRzL2JjbTQ3MDk0
LWx1eHVsLXhhcC0xNjEwLmR0cyB8IDI1ICsrKysrKysrKysrKwogYXJjaC9hcm0vYm9vdC9kdHMv
YmNtNDcwOTQtbHV4dWwteHdjLTIwMDAuZHRzIHwgMjAgKysrKysrKysrKwogYXJjaC9hcm0vYm9v
dC9kdHMvYmNtNDcwOTQtbHV4dWwteHdyLTMxMDAuZHRzIHwgNDAgKysrKysrKysrKysrKysrKysr
KwogLi4uL2Jvb3QvZHRzL2JjbTQ3MDk0LWx1eHVsLXh3ci0zMTUwLXYxLmR0cyAgIHwgNDAgKysr
KysrKysrKysrKysrKysrKwogOCBmaWxlcyBjaGFuZ2VkLCAyMzAgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2JjbTQ3MDgtbHV4dWwteGFwLTE1MTAuZHRzIGIv
YXJjaC9hcm0vYm9vdC9kdHMvYmNtNDcwOC1sdXh1bC14YXAtMTUxMC5kdHMKaW5kZXggZTU4Yzgw
NzdiZTFkLi44MTBmYzMyZjE4OTUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2JjbTQ3
MDgtbHV4dWwteGFwLTE1MTAuZHRzCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2JjbTQ3MDgtbHV4
dWwteGFwLTE1MTAuZHRzCkBAIC02MCwzICs2MCwyOCBAQCAmc3BpX25vciB7CiAmdXNiM19waHkg
ewogCXN0YXR1cyA9ICJva2F5IjsKIH07CisKKyZzcmFiIHsKKwlzdGF0dXMgPSAib2theSI7CisK
Kwlwb3J0cyB7CisJCSNhZGRyZXNzLWNlbGxzID0gPDE+OworCQkjc2l6ZS1jZWxscyA9IDwwPjsK
KworCQlwb3J0QDAgeworCQkJcmVnID0gPDA+OworCQkJbGFiZWwgPSAicG9lIjsKKwkJfTsKKwor
CQlwb3J0QDQgeworCQkJcmVnID0gPDQ+OworCQkJbGFiZWwgPSAibGFuIjsKKwkJfTsKKworCQlw
b3J0QDUgeworCQkJcmVnID0gPDU+OworCQkJbGFiZWwgPSAiY3B1IjsKKwkJCWV0aGVybmV0ID0g
PCZnbWFjMD47CisJCX07CisJfTsKK307CmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9i
Y200NzA4LWx1eHVsLXh3Yy0xMDAwLmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2JjbTQ3MDgtbHV4
dWwteHdjLTEwMDAuZHRzCmluZGV4IDc2NmRiNjE3NDU1Yi4uNzYwNGI0NDgwYmIxIDEwMDY0NAot
LS0gYS9hcmNoL2FybS9ib290L2R0cy9iY200NzA4LWx1eHVsLXh3Yy0xMDAwLmR0cworKysgYi9h
cmNoL2FybS9ib290L2R0cy9iY200NzA4LWx1eHVsLXh3Yy0xMDAwLmR0cwpAQCAtNjcsMyArNjcs
MjMgQEAgJnNwaV9ub3IgewogJnVzYjNfcGh5IHsKIAlzdGF0dXMgPSAib2theSI7CiB9OworCism
c3JhYiB7CisJc3RhdHVzID0gIm9rYXkiOworCisJcG9ydHMgeworCQkjYWRkcmVzcy1jZWxscyA9
IDwxPjsKKwkJI3NpemUtY2VsbHMgPSA8MD47CisKKwkJcG9ydEA0IHsKKwkJCXJlZyA9IDw0PjsK
KwkJCWxhYmVsID0gImxhbiI7CisJCX07CisKKwkJcG9ydEA1IHsKKwkJCXJlZyA9IDw1PjsKKwkJ
CWxhYmVsID0gImNwdSI7CisJCQlldGhlcm5ldCA9IDwmZ21hYzA+OworCQl9OworCX07Cit9Owpk
aWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvYmNtNDcwODEtbHV4dWwteGFwLTE0MTAuZHRz
IGIvYXJjaC9hcm0vYm9vdC9kdHMvYmNtNDcwODEtbHV4dWwteGFwLTE0MTAuZHRzCmluZGV4IGI5
ZDk1MDExNjM3ZC4uMWVjNjU1ODA5ZTU3IDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9i
Y200NzA4MS1sdXh1bC14YXAtMTQxMC5kdHMKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvYmNtNDcw
ODEtbHV4dWwteGFwLTE0MTAuZHRzCkBAIC02MCwzICs2MCwyMyBAQCAmc3BpX25vciB7CiAmdXNi
M19waHkgewogCXN0YXR1cyA9ICJva2F5IjsKIH07CisKKyZzcmFiIHsKKwlzdGF0dXMgPSAib2th
eSI7CisKKwlwb3J0cyB7CisJCSNhZGRyZXNzLWNlbGxzID0gPDE+OworCQkjc2l6ZS1jZWxscyA9
IDwwPjsKKworCQlwb3J0QDQgeworCQkJcmVnID0gPDQ+OworCQkJbGFiZWwgPSAicG9lIjsKKwkJ
fTsKKworCQlwb3J0QDUgeworCQkJcmVnID0gPDU+OworCQkJbGFiZWwgPSAiY3B1IjsKKwkJCWV0
aGVybmV0ID0gPCZnbWFjMD47CisJCX07CisJfTsKK307CmRpZmYgLS1naXQgYS9hcmNoL2FybS9i
b290L2R0cy9iY200NzA4MS1sdXh1bC14d3ItMTIwMC5kdHMgYi9hcmNoL2FybS9ib290L2R0cy9i
Y200NzA4MS1sdXh1bC14d3ItMTIwMC5kdHMKaW5kZXggMDA1MmUxYjI0MTMwLi4wNGJmZDU4MTI3
ZmMgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2JjbTQ3MDgxLWx1eHVsLXh3ci0xMjAw
LmR0cworKysgYi9hcmNoL2FybS9ib290L2R0cy9iY200NzA4MS1sdXh1bC14d3ItMTIwMC5kdHMK
QEAgLTEwOCwzICsxMDgsNDMgQEAgJnNwaV9ub3IgewogJnVzYjNfcGh5IHsKIAlzdGF0dXMgPSAi
b2theSI7CiB9OworCismc3JhYiB7CisJc3RhdHVzID0gIm9rYXkiOworCisJcG9ydHMgeworCQkj
YWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJI3NpemUtY2VsbHMgPSA8MD47CisKKwkJcG9ydEAwIHsK
KwkJCXJlZyA9IDwwPjsKKwkJCWxhYmVsID0gImxhbjQiOworCQl9OworCisJCXBvcnRAMSB7CisJ
CQlyZWcgPSA8MT47CisJCQlsYWJlbCA9ICJsYW4zIjsKKwkJfTsKKworCQlwb3J0QDIgeworCQkJ
cmVnID0gPDI+OworCQkJbGFiZWwgPSAibGFuMiI7CisJCX07CisKKwkJcG9ydEAzIHsKKwkJCXJl
ZyA9IDwzPjsKKwkJCWxhYmVsID0gImxhbjEiOworCQl9OworCisJCXBvcnRANCB7CisJCQlyZWcg
PSA8ND47CisJCQlsYWJlbCA9ICJ3YW4iOworCQl9OworCisJCXBvcnRANSB7CisJCQlyZWcgPSA8
NT47CisJCQlsYWJlbCA9ICJjcHUiOworCQkJZXRoZXJuZXQgPSA8JmdtYWMwPjsKKwkJfTsKKwl9
OworfTsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2JjbTQ3MDk0LWx1eHVsLXhhcC0x
NjEwLmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2JjbTQ3MDk0LWx1eHVsLXhhcC0xNjEwLmR0cwpp
bmRleCBiNDdmYjA3MDBhMWYuLjA2OGUzODRiOGFiNyAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9v
dC9kdHMvYmNtNDcwOTQtbHV4dWwteGFwLTE2MTAuZHRzCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRz
L2JjbTQ3MDk0LWx1eHVsLXhhcC0xNjEwLmR0cwpAQCAtNTQsMyArNTQsMjggQEAgcmVzdGFydCB7
CiAmc3BpX25vciB7CiAJc3RhdHVzID0gIm9rYXkiOwogfTsKKworJnNyYWIgeworCXN0YXR1cyA9
ICJva2F5IjsKKworCXBvcnRzIHsKKwkJI2FkZHJlc3MtY2VsbHMgPSA8MT47CisJCSNzaXplLWNl
bGxzID0gPDA+OworCisJCXBvcnRAMCB7CisJCQlyZWcgPSA8MD47CisJCQlsYWJlbCA9ICJwb2Ui
OworCQl9OworCisJCXBvcnRAMSB7CisJCQlyZWcgPSA8MT47CisJCQlsYWJlbCA9ICJsYW4iOwor
CQl9OworCisJCXBvcnRANSB7CisJCQlyZWcgPSA8NT47CisJCQlsYWJlbCA9ICJjcHUiOworCQkJ
ZXRoZXJuZXQgPSA8JmdtYWMwPjsKKwkJfTsKKwl9OworfTsKZGlmZiAtLWdpdCBhL2FyY2gvYXJt
L2Jvb3QvZHRzL2JjbTQ3MDk0LWx1eHVsLXh3Yy0yMDAwLmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRz
L2JjbTQ3MDk0LWx1eHVsLXh3Yy0yMDAwLmR0cwppbmRleCAzMzQzMjUzOTBhZWQuLjY3YTU5ODJh
ZjljOSAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvYmNtNDcwOTQtbHV4dWwteHdjLTIw
MDAuZHRzCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2JjbTQ3MDk0LWx1eHVsLXh3Yy0yMDAwLmR0
cwpAQCAtNTEsMyArNTEsMjMgQEAgJnVhcnQxIHsKICZzcGlfbm9yIHsKIAlzdGF0dXMgPSAib2th
eSI7CiB9OworCismc3JhYiB7CisJc3RhdHVzID0gIm9rYXkiOworCisJcG9ydHMgeworCQkjYWRk
cmVzcy1jZWxscyA9IDwxPjsKKwkJI3NpemUtY2VsbHMgPSA8MD47CisKKwkJcG9ydEAwIHsKKwkJ
CXJlZyA9IDwwPjsKKwkJCWxhYmVsID0gImxhbiI7CisJCX07CisKKwkJcG9ydEA1IHsKKwkJCXJl
ZyA9IDw1PjsKKwkJCWxhYmVsID0gImNwdSI7CisJCQlldGhlcm5ldCA9IDwmZ21hYzA+OworCQl9
OworCX07Cit9OwpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvYmNtNDcwOTQtbHV4dWwt
eHdyLTMxMDAuZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvYmNtNDcwOTQtbHV4dWwteHdyLTMxMDAu
ZHRzCmluZGV4IGFjNzUxNTQyMzQ3NC4uYTIxYjJkMTg1NTk2IDEwMDY0NAotLS0gYS9hcmNoL2Fy
bS9ib290L2R0cy9iY200NzA5NC1sdXh1bC14d3ItMzEwMC5kdHMKKysrIGIvYXJjaC9hcm0vYm9v
dC9kdHMvYmNtNDcwOTQtbHV4dWwteHdyLTMxMDAuZHRzCkBAIC0xMDMsMyArMTAzLDQzIEBAICZz
cGlfbm9yIHsKICZ1c2IzX3BoeSB7CiAJc3RhdHVzID0gIm9rYXkiOwogfTsKKworJnNyYWIgewor
CXN0YXR1cyA9ICJva2F5IjsKKworCXBvcnRzIHsKKwkJI2FkZHJlc3MtY2VsbHMgPSA8MT47CisJ
CSNzaXplLWNlbGxzID0gPDA+OworCisJCXBvcnRAMCB7CisJCQlyZWcgPSA8MD47CisJCQlsYWJl
bCA9ICJsYW40IjsKKwkJfTsKKworCQlwb3J0QDEgeworCQkJcmVnID0gPDE+OworCQkJbGFiZWwg
PSAibGFuMyI7CisJCX07CisKKwkJcG9ydEAyIHsKKwkJCXJlZyA9IDwyPjsKKwkJCWxhYmVsID0g
ImxhbjIiOworCQl9OworCisJCXBvcnRAMyB7CisJCQlyZWcgPSA8Mz47CisJCQlsYWJlbCA9ICJs
YW4xIjsKKwkJfTsKKworCQlwb3J0QDQgeworCQkJcmVnID0gPDQ+OworCQkJbGFiZWwgPSAid2Fu
IjsKKwkJfTsKKworCQlwb3J0QDUgeworCQkJcmVnID0gPDU+OworCQkJbGFiZWwgPSAiY3B1IjsK
KwkJCWV0aGVybmV0ID0gPCZnbWFjMD47CisJCX07CisJfTsKK307CmRpZmYgLS1naXQgYS9hcmNo
L2FybS9ib290L2R0cy9iY200NzA5NC1sdXh1bC14d3ItMzE1MC12MS5kdHMgYi9hcmNoL2FybS9i
b290L2R0cy9iY200NzA5NC1sdXh1bC14d3ItMzE1MC12MS5kdHMKaW5kZXggNmQyOGI3ZGFjZDA1
Li40ZDVjNWFhN2RjNDIgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2JjbTQ3MDk0LWx1
eHVsLXh3ci0zMTUwLXYxLmR0cworKysgYi9hcmNoL2FybS9ib290L2R0cy9iY200NzA5NC1sdXh1
bC14d3ItMzE1MC12MS5kdHMKQEAgLTc0LDMgKzc0LDQzIEBAICZ1c2IzIHsKICZzcGlfbm9yIHsK
IAlzdGF0dXMgPSAib2theSI7CiB9OworCismc3JhYiB7CisJc3RhdHVzID0gIm9rYXkiOworCisJ
cG9ydHMgeworCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJI3NpemUtY2VsbHMgPSA8MD47CisK
KwkJcG9ydEAwIHsKKwkJCXJlZyA9IDwwPjsKKwkJCWxhYmVsID0gImxhbjQiOworCQl9OworCisJ
CXBvcnRAMSB7CisJCQlyZWcgPSA8MT47CisJCQlsYWJlbCA9ICJsYW4zIjsKKwkJfTsKKworCQlw
b3J0QDIgeworCQkJcmVnID0gPDI+OworCQkJbGFiZWwgPSAibGFuMiI7CisJCX07CisKKwkJcG9y
dEAzIHsKKwkJCXJlZyA9IDwzPjsKKwkJCWxhYmVsID0gImxhbjEiOworCQl9OworCisJCXBvcnRA
NCB7CisJCQlyZWcgPSA8ND47CisJCQlsYWJlbCA9ICJ3YW4iOworCQl9OworCisJCXBvcnRANSB7
CisJCQlyZWcgPSA8NT47CisJCQlsYWJlbCA9ICJjcHUiOworCQkJZXRoZXJuZXQgPSA8JmdtYWMw
PjsKKwkJfTsKKwl9OworfTsKLS0gCjIuMjYuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
