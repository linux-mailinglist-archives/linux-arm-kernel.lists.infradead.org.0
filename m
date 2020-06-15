Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4056E1F92AF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:06:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2JsMVEKMfhpn0tNZblQFE/m/+ssTwYSqK+pwPf7Y0zM=; b=QWwnLnHfm8qkfz
	MIujjqbo540Wt5Vj7tc82rfjSKKBz34SaXh6tXU7Y728zryvi2aNOGDptT+bwayBSEamEcsRKyp78
	19Tk3xpxNN2loeD3KicGpz/lA+oE22mj6+hsBS6iB6jV0AMrK2C7+PGT5nntYPZWeWdYEQxL7V4D7
	KERcrIlURq8RstC+qJENOoh4OXlcPa2k5OJFAGAEvVcPXQkauJ1JeWAGl22m0M/AwBfy8CX5ynOXD
	KcW8NwnRmHmv1FnjioWHCq0faA1QUiK7LULpAF+rgZPF4X9B3mWS+A5er+73i+Roa7iStmgWJh4lp
	TLb4SgR/Y4rs8dQrdnTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkl4b-0003rU-BO; Mon, 15 Jun 2020 09:06:33 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkl0q-0007e0-6N
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 09:02:44 +0000
Received: by mail-wr1-x42a.google.com with SMTP id q11so16256458wrp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 02:02:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tsCLU7c5unBxnRP02RziNczP1dVrvUnmrxRghsZ+ccw=;
 b=EZLjJlVCmxfSEswylJgYWWxJWN/c0WUNjxypMwr6MOH5yYlc0F50EuRw//PvkLLPJm
 qU2bERbRr2e4c4+xTZq6a6e4ED69uN6WQPoFBWFXSwuSd6KUu6YxZBDBCfm3gatCEmUG
 AsqxT3jIzxjJ7GAWjCE2UrBganTPPnkDRVtzThFIn2Y1axscCELJn0LaD6JqdBzXaKrf
 i1WsoG+MWCe85wvdnDtX6Fx1hlTj4wihVqwYsz/c+AijrwgbCWJKO/c7w2jja+kpvfy/
 g04/tpokfHgW8R+AC/GL5ebKbvKyYMDGEtAs6kOt8h8r6x0El0PLzTyBGaBP01tgoNWS
 hJvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tsCLU7c5unBxnRP02RziNczP1dVrvUnmrxRghsZ+ccw=;
 b=d1Fxj9apMv/h/cvS2nWyXK+Nh7Z2RSuZ1KsS26qhgXwlYdxEqaShJ+kLjAh9BBwVg3
 RHH0aBJk72HALjKv2uP+7LLix3y0kzyd3LWdZdXI0LQqVKsEhReR1G4U4jmvAd0+Yku1
 gkfMmG+b5Dp5n8GGwgmoQNA1Vp5n5kvqnRaqEbdTKEwVUKRhvDzciY26hnJqd53vIDXo
 iOC805yC9SLPLJ93yy8LNwF+VFEcuLE5FxOt2dMbwxn/UY0NrUeLX5aHdaPlOXnZxkKx
 MwuMOzdhLhJGb48WZtDkFXSzKvPhUlo0mU4pCDgAilME2kVFGzLqwbt24Yk3zIaB6SKX
 HfXg==
X-Gm-Message-State: AOAM532w/LIPgDKyiUOgOu7REI82J+fVlvocDukbqfyZf3EXLNr/ACsp
 cXlxjOroRjR5u/YKxulIfiA=
X-Google-Smtp-Source: ABdhPJyi1PE2q6tlPKD/XsNCFCOHrnFjIMxUTjwni1holsNvEaEXZT4I+ft7lPgtJD/228HhL9gSCg==
X-Received: by 2002:a5d:55c2:: with SMTP id i2mr27951100wrw.225.1592211758476; 
 Mon, 15 Jun 2020 02:02:38 -0700 (PDT)
Received: from skynet.lan (168.red-88-20-188.staticip.rima-tde.net.
 [88.20.188.168])
 by smtp.gmail.com with ESMTPSA id o15sm24089516wrv.48.2020.06.15.02.02.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 02:02:37 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: mturquette@baylibre.com, sboyd@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, robh+dt@kernel.org,
 julia.lawall@lip6.fr, jonas.gorski@gmail.com, lkp@intel.com,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 3/8] mips: bmips: add BCM6328 clock definitions
Date: Mon, 15 Jun 2020 11:02:26 +0200
Message-Id: <20200615090231.2932696-4-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200615090231.2932696-1-noltari@gmail.com>
References: <20200615090231.2932696-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_020240_715669_08876285 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGhlYWRlciB3aXRoIEJDTTYzMjggZGVmaW5pdGlvbnMgaW4gb3JkZXIgdG8gYmUgYWJsZSB0
byBpbmNsdWRlIGl0IGZyb20KZGV2aWNlIHRyZWUgZmlsZXMuCgpTaWduZWQtb2ZmLWJ5OiDDgWx2
YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgotLS0KIGluY2x1ZGUvZHQt
YmluZGluZ3MvY2xvY2svYmNtNjMyOC1jbG9jay5oIHwgMTkgKysrKysrKysrKysrKysrKysrKwog
MSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNs
dWRlL2R0LWJpbmRpbmdzL2Nsb2NrL2JjbTYzMjgtY2xvY2suaAoKZGlmZiAtLWdpdCBhL2luY2x1
ZGUvZHQtYmluZGluZ3MvY2xvY2svYmNtNjMyOC1jbG9jay5oIGIvaW5jbHVkZS9kdC1iaW5kaW5n
cy9jbG9jay9iY202MzI4LWNsb2NrLmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAw
MDAwMDAwLi4xZjZhMzEwM2YzZGMKLS0tIC9kZXYvbnVsbAorKysgYi9pbmNsdWRlL2R0LWJpbmRp
bmdzL2Nsb2NrL2JjbTYzMjgtY2xvY2suaApAQCAtMCwwICsxLDE5IEBACisvKiBTUERYLUxpY2Vu
c2UtSWRlbnRpZmllcjogR1BMLTIuMCsgKi8KKworI2lmbmRlZiBfX0RUX0JJTkRJTkdTX0NMT0NL
X0JDTTYzMjhfSAorI2RlZmluZSBfX0RUX0JJTkRJTkdTX0NMT0NLX0JDTTYzMjhfSAorCisjZGVm
aW5lIEJDTTYzMjhfQ0xLX1BIWU1JUFMJMAorI2RlZmluZSBCQ002MzI4X0NMS19BRFNMX1FQUk9D
CTEKKyNkZWZpbmUgQkNNNjMyOF9DTEtfQURTTF9BRkUJMgorI2RlZmluZSBCQ002MzI4X0NMS19B
RFNMCTMKKyNkZWZpbmUgQkNNNjMyOF9DTEtfTUlQUwk0CisjZGVmaW5lIEJDTTYzMjhfQ0xLX1NB
UgkJNQorI2RlZmluZSBCQ002MzI4X0NMS19QQ00JCTYKKyNkZWZpbmUgQkNNNjMyOF9DTEtfVVNC
RAk3CisjZGVmaW5lIEJDTTYzMjhfQ0xLX1VTQkgJOAorI2RlZmluZSBCQ002MzI4X0NMS19IU1NQ
SQk5CisjZGVmaW5lIEJDTTYzMjhfQ0xLX1BDSUUJMTAKKyNkZWZpbmUgQkNNNjMyOF9DTEtfUk9C
T1NXCTExCisKKyNlbmRpZiAvKiBfX0RUX0JJTkRJTkdTX0NMT0NLX0JDTTYzMjhfSCAqLwotLSAK
Mi4yNy4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
