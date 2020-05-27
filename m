Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E8B1E3A88
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 09:29:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yZBipTIgOKBMjbg6WpDc4NN8EgYKe4fPMRGr+TzjHj4=; b=B7S3ZqH1QuX5Lw
	xfTF2vnU4QzN90zl1lZZVsE7UcOSzjpnDePfKe2Y6bjPM1Fl105t+3ROVzY8M4Q3ZAm6TKIzKSkef
	m/e9/EVd2BSpOii67fIy2AYUO5YcXD5nHMVNkX8EErifrtKXsF9Shc5ZuTYRMw/haMew7IAAf+Tki
	kmcwzDwa89u2jBrnE9rrEV9nx0Zwd/YxcuqwUdhZCxX4W4GzG83HBDzNqm4BIGWNsMu/jGhzkzp4L
	jo0CreeD2fz8OJjBCM0czw4pde3KM65GuqZt3afrflyeqsfRYWULwt2iOb83iPDPwtfA0GQPN0WiP
	m/8ybLCVtpN4+2kJa2Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdqVJ-0004AT-MO; Wed, 27 May 2020 07:29:33 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdqTw-0003CL-9S
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 07:28:09 +0000
Received: by mail-pf1-x443.google.com with SMTP id y198so11462313pfb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 00:28:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PnARTlRhVkBUQkPqC454r4YU05zMHZz2LfM1l53WRb0=;
 b=j/De+h+QmNQ49bidmH96zLrOu2OBXrIIB6Y9QUEalQjZ1catzyle70SRBwOcwMWe+z
 iZIt54zFlbJqY6v33AGBhOtUxRV6Szu1l68EY9j0+rctjO15uFYPrWRUy3ghFb1xW7/H
 abClqYr3/WLdGWazduydiccGKMYgnyX/8lNoQoRJwJbpCE62LWArAo1EIY7SkaA1x3Hy
 nzV7QCUDYFaESm+gzjKIQGUvU0Na2CtsCyVwB+tlMQSf8mPIG7N0fY14a/SFd+dOWhAt
 0otXEMgwfJZ4aADjlvQwy4zZJ3PleE0M9x94oSgoEBNHkCtYi9ZFIcjq5FV59Ysyeooz
 E3Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PnARTlRhVkBUQkPqC454r4YU05zMHZz2LfM1l53WRb0=;
 b=NV07NSGsy+OycLeKnld+rMApnu8XN1gA00bBPSHG6IaGLSFMamfhk3179kXTko5tSV
 aumwwR7qXdOBPMh3HZsw+8PSKkjkS3SQV0IhsTYfi0sKaFj7eyYBiPKKmAhCSjTcEGep
 obkl9jrOvZCc2FfCGVDAUgDZjbfpqEoKCwzZlsXHZMRkxiNcGm8g6YbUX5Rk2xd/8dus
 Uc1YR4lamVf84Jgl/KWPAdNOWJLBcXUhz2ZFfFCVDxvktGWGdI7p64hzo+W9xGu3da0v
 pFHAg5E31ElLj/h6xyjxp1v5gKfvFQHeGrZoG3AfY+v0ZcxVH9V4+rab7dimdvLGuqY9
 NCTg==
X-Gm-Message-State: AOAM530HGNJhGR8PcYMkIdbMOTfbT5WXhSjHnerhznIP4hrAoneZsiAV
 WHV5YLb6PnhbNatF4HLqCH8=
X-Google-Smtp-Source: ABdhPJx3SUGNW2XD8h8US9uScxTycxVHXeqpLbmx7fMrRID3k4oOipLAcBnlwkA/Q3ap+M2eKxw16w==
X-Received: by 2002:aa7:9ab6:: with SMTP id x22mr2661695pfi.136.1590564486694; 
 Wed, 27 May 2020 00:28:06 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.191.44])
 by smtp.gmail.com with ESMTPSA id q201sm1371842pfq.40.2020.05.27.00.28.01
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 27 May 2020 00:28:06 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, p.zabel@pengutronix.de, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com, thierry.reding@gmail.com, sam@ravnborg.org,
 airlied@linux.ie, daniel@ffwll.ch, mturquette@baylibre.com,
 sboyd@kernel.org, andy.shevchenko@gmail.com, noralf@tronnes.org,
 linus.walleij@linaro.org, broonie@kernel.org
Subject: [PATCH v6 5/9] clk: stm32: Fix stm32f429's ltdc driver hang in set
 clock rate
Date: Wed, 27 May 2020 15:27:29 +0800
Message-Id: <1590564453-24499-6-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590564453-24499-1-git-send-email-dillon.minfei@gmail.com>
References: <1590564453-24499-1-git-send-email-dillon.minfei@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_002808_400640_EC4E630B 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, dillonhua@gmail.com, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-spi@vger.kernel.org, dillon min <dillon.minfei@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogZGlsbG9uIG1pbiA8ZGlsbG9uLm1pbmZlaUBnbWFpbC5jb20+CgpUaGlzIGlzIGR1ZSB0
byBtaXN1c2Ug4oCYUExMX1ZDT19TQUknIGFuZCdQTExfU0FJJyBpbiBjbGstc3RtMzJmNC5jCidQ
TExfU0FJJyBpcyAyLCAnUExMX1ZDT19TQUknIGlzIDcoZGVmaW5lZCBpbgppbmNsdWRlL2R0LWJp
bmRpbmdzL2Nsb2NrL3N0bTMyZngtY2xvY2suaCkuCgoncG9zdF9kaXYnIHBvaW50IHRvICdwb3N0
X2Rpdl9kYXRhW10nLCAncG9zdF9kaXYtPnBsbF9udW0nCmlzIFBMTF9JMlMgb3IgUExMX1NBSS4K
CidjbGtzW1BMTF9WQ09fU0FJXScgaGFzIHZhbGlkICdzdHJ1Y3QgY2xrX2h3KiAnIHJldHVybgpm
cm9tIHN0bTMyZjRfcmNjX3JlZ2lzdGVyX3BsbCgpIGJ1dCwgYXQgbGluZSAxNzc3IG9mCmRyaXZl
ci9jbGsvY2xrLXN0bTMyZjQuYywgdXNlIHRoZSAnY2xrc1twb3N0X2Rpdi0+cGxsX251bV0nLApl
cXVhbCB0byAnY2xrc1tQTExfU0FJXScsIHRoaXMgaXMgaW52YWxpZCBhcnJheSBtZW1iZXIgYXQg
dGhhdCB0aW1lLgoKRml4ZXM6IDUxNzYzM2VmNjMwZSAoImNsazogc3RtMzJmNDogQWRkIHBvc3Qg
ZGl2aXNvciBmb3IgSTJTICYgU0FJIFBMTHMiKQpTaWduZWQtb2ZmLWJ5OiBkaWxsb24gbWluIDxk
aWxsb24ubWluZmVpQGdtYWlsLmNvbT4KLS0tCgpIaSBTdGVwaGVuIEJveWQsCgpUaGlzIHVwZGF0
ZSBpbmNsdWRlIGJlbG93IGNoYW5nZXMgc2luY2UgVjUKMSBzZXBhcmF0ZSAnW1BBVENIIHY1IDUv
OF0nIHBhdGNoIHRvIHR3byBzdWJtaXRzCjIgZWFjaCBvbmUgaGFzIGEgRml4ZXMgdGFncwoKYmVz
dCByZWdhcmRzLgoKIGRyaXZlcnMvY2xrL2Nsay1zdG0zMmY0LmMgfCA2ICsrKy0tLQogMSBmaWxl
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2Nsay9jbGstc3RtMzJmNC5jIGIvZHJpdmVycy9jbGsvY2xrLXN0bTMyZjQuYwppbmRl
eCAxODExN2NlNWZmODUuLjQyY2EyZGQ4NmFlYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9jbGsvY2xr
LXN0bTMyZjQuYworKysgYi9kcml2ZXJzL2Nsay9jbGstc3RtMzJmNC5jCkBAIC01NTcsMTMgKzU1
NywxMyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGNsa19kaXZfdGFibGUgcG9zdF9kaXZyX3RhYmxl
W10gPSB7CiAKICNkZWZpbmUgTUFYX1BPU1RfRElWIDMKIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgc3Rt
MzJmNF9wbGxfcG9zdF9kaXZfZGF0YSAgcG9zdF9kaXZfZGF0YVtNQVhfUE9TVF9ESVZdID0gewot
CXsgQ0xLX0kyU1FfUERJViwgUExMX0kyUywgInBsbGkycy1xLWRpdiIsICJwbGxpMnMtcSIsCisJ
eyBDTEtfSTJTUV9QRElWLCBQTExfVkNPX0kyUywgInBsbGkycy1xLWRpdiIsICJwbGxpMnMtcSIs
CiAJCUNMS19TRVRfUkFURV9QQVJFTlQsIFNUTTMyRjRfUkNDX0RDS0NGR1IsIDAsIDUsIDAsIE5V
TEx9LAogCi0JeyBDTEtfU0FJUV9QRElWLCBQTExfU0FJLCAicGxsc2FpLXEtZGl2IiwgInBsbHNh
aS1xIiwKKwl7IENMS19TQUlRX1BESVYsIFBMTF9WQ09fU0FJLCAicGxsc2FpLXEtZGl2IiwgInBs
bHNhaS1xIiwKIAkJQ0xLX1NFVF9SQVRFX1BBUkVOVCwgU1RNMzJGNF9SQ0NfRENLQ0ZHUiwgOCwg
NSwgMCwgTlVMTCB9LAogCi0JeyBOT19JRFgsIFBMTF9TQUksICJwbGxzYWktci1kaXYiLCAicGxs
c2FpLXIiLCBDTEtfU0VUX1JBVEVfUEFSRU5ULAorCXsgTk9fSURYLCBQTExfVkNPX1NBSSwgInBs
bHNhaS1yLWRpdiIsICJwbGxzYWktciIsIENMS19TRVRfUkFURV9QQVJFTlQsCiAJCVNUTTMyRjRf
UkNDX0RDS0NGR1IsIDE2LCAyLCAwLCBwb3N0X2RpdnJfdGFibGUgfSwKIH07CiAKLS0gCjIuNy40
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
