Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D13BF1FBE5F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 20:46:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ua3063YL3aB3hmJ6d+Ut/kST5haGeY/Iv9arRWp1TWk=; b=c9KWKz/TKv7CNg
	8UyAH+C/+RCALFgpy5M1QTz5DTINRnV/VyOBGLTTiMYHtlmS6MicnGWw3NrLyrFY8Col+oROXox7+
	zi3zLCo8aWt31jblpu69ut19PMa1RLrKZrRdM0x+A7dVOexCOihISfdOGH7hiVtqEgp8vy+fQkSI5
	2Na9vm1m3OmXisd6KGkyB1Rl7m/DsCUzFzUKyGWTSdcqHEN8W1dWRqxrEuTj2sU7iMdBgfTca7AWu
	EAHJ0Zdm3NfknnCSuRLsrb0aibxTD7/vnUhRucdA0FjzY47tRiQH7c+PZimL2WyXFDlk1HOpvdfpd
	LUrkzpKfTPrXC8RA0Jmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlGb6-0008IN-PP; Tue, 16 Jun 2020 18:46:12 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlGah-000892-8N
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 18:45:48 +0000
Received: by mail-wm1-x334.google.com with SMTP id f185so4153040wmf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 11:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YMgA4YJ/qbECneRtetKCJmuDx4PxuOukQg7g/2crGKA=;
 b=XDv5Z/iYeTJ6vRnmkeD73r2vASjq0XQ/6aeW2+c0/m/WzbCOV+S8g5ya9ksurkHCOf
 umKx4XwA/E7X5+6KsaHSkP7cBcuEX+lt1nyPjIXpxcJ/QzKscKXzV86IBf3bQqnwMG/t
 2RDMj+XIREq17ukVHhccGr41OGFquevUfoJuP3JnGtM0VHFoTyOny3Md8Wr8at8/NEDV
 tkvKryTUGBIAtt0vpUSB2Pb2t9EDDSnd54YgWrAZ0qh1RT+CgLR3sXHZAlevSAJqsH/R
 eCSGwaozu0d6o1zphS2Bs6rrNa6QZ/kjYYzKx9tU/3kLy1E4E2mAYmWw2Lg3u4ngL4Pr
 afEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YMgA4YJ/qbECneRtetKCJmuDx4PxuOukQg7g/2crGKA=;
 b=lpXYxmb5vgztDPRzFCSbFtViEfNymOB9aZfeV6IicHLn0BxFUp3xbiqcZ0/PWzzH0A
 iAsNaZSMKbOfgTEASL/fPh2Vid7j3J8clhxghcGiVMSybc42zi4PEySNdx2qE2v5fFMF
 KkleOY0ciZuYKg2hlc7qbEwP7fREUuCH35LATTEj8Ss9ly2idyKVD0ivIt+Od2d8f+R/
 ST30cSOVSogilrQ8uAtT1LzAQ2bOtsCUzPNiMTMSWIQ1KmYaGwz3CA13eIrl+vxL3mH3
 C46fInIMrtutEbxte9UhbIaCy0prs7I1eAMXEbTu3IKP779EHlFscdcq0NvZ88bdBuAO
 tasg==
X-Gm-Message-State: AOAM530ohGIEQ7MV5wmMNDodsFuJwQUKktfbEehVWTqxc1KSz5rt0Xsh
 hK6rCbX+QoRUKaTba2uXzNg=
X-Google-Smtp-Source: ABdhPJyyzLEab3tlZohjF60/d333MbM6aVxfC5uG4JauZWjsw2Da5X6n3CGsGR33Txl0YsoWhijvvA==
X-Received: by 2002:a1c:9d53:: with SMTP id g80mr4858240wme.13.1592333145726; 
 Tue, 16 Jun 2020 11:45:45 -0700 (PDT)
Received: from skynet.lan (90.red-88-20-62.staticip.rima-tde.net.
 [88.20.62.90])
 by smtp.gmail.com with ESMTPSA id q11sm30528707wrv.67.2020.06.16.11.45.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 11:45:45 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: simon@fire.lp0.eu, jonas.gorski@gmail.com, kishon@ti.com, vkoul@kernel.org,
 robh+dt@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 krzk@kernel.org, gregkh@linuxfoundation.org, alcooperx@gmail.com,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/2] dt-bindings: phy: add bcm63xx-usbh bindings
Date: Tue, 16 Jun 2020 20:45:41 +0200
Message-Id: <20200616184542.3504965-2-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200616184542.3504965-1-noltari@gmail.com>
References: <20200616184542.3504965-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_114547_295903_33F65F06 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:334 listed in]
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

RG9jdW1lbnQgQkNNNjN4eCBVU0JIIFBIWSBiaW5kaW5ncy4KClNpZ25lZC1vZmYtYnk6IMOBbHZh
cm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+Ci0tLQogdjM6IG5vIGNoYW5n
ZXMKIHYyOiBwaHktY2VsbHMgY2hhbmdlZCB0byAxLgoKIC4uLi9iaW5kaW5ncy9waHkvYnJjbSxi
Y202M3h4LXVzYmgtcGh5LnlhbWwgICB8IDcyICsrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBj
aGFuZ2VkLCA3MiBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9icmNtLGJjbTYzeHgtdXNiaC1waHkueWFtbAoKZGlm
ZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYnJjbSxiY202
M3h4LXVzYmgtcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5
L2JyY20sYmNtNjN4eC11c2JoLXBoeS55YW1sCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAw
MDAwMDAwMDAwMC4uOWVmMmMxZjhhYTAwCi0tLSAvZGV2L251bGwKKysrIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9icmNtLGJjbTYzeHgtdXNiaC1waHkueWFtbApAQCAt
MCwwICsxLDcyIEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCBPUiBCU0Qt
Mi1DbGF1c2UpCislWUFNTCAxLjIKKy0tLQorJGlkOiAiaHR0cDovL2RldmljZXRyZWUub3JnL3Nj
aGVtYXMvcGh5L2JyY20sYmNtNjN4eC11c2JoLXBoeS55YW1sIyIKKyRzY2hlbWE6ICJodHRwOi8v
ZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMiCisKK3RpdGxlOiBCQ002M3h4
IFVTQkggUEhZCisKK21haW50YWluZXJzOgorICAtIMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8
bm9sdGFyaUBnbWFpbC5jb20+CisKK3Byb3BlcnRpZXM6CisgIGNvbXBhdGlibGU6CisgICAgZW51
bToKKyAgICAgIC0gYnJjbSxiY202MzE4LXVzYmgtcGh5CisgICAgICAtIGJyY20sYmNtNjMyOC11
c2JoLXBoeQorICAgICAgLSBicmNtLGJjbTYzNTgtdXNiaC1waHkKKyAgICAgIC0gYnJjbSxiY202
MzYyLXVzYmgtcGh5CisgICAgICAtIGJyY20sYmNtNjM2OC11c2JoLXBoeQorICAgICAgLSBicmNt
LGJjbTYzMjY4LXVzYmgtcGh5CisKKyAgcmVnOgorICAgIG1heEl0ZW1zOiAxCisKKyAgY2xvY2tz
OgorICAgIG1heEl0ZW1zOiAyCisKKyAgY2xvY2stbmFtZXM6CisgICAgaXRlbXM6CisgICAgICAt
IGNvbnN0OiB1c2JoCisgICAgICAtIGNvbnN0OiB1c2JfcmVmCisKKyAgcmVzZXRzOgorICAgIG1h
eEl0ZW1zOiAxCisKKyAgIiNwaHktY2VsbHMiOgorICAgIGNvbnN0OiAxCisKK3JlcXVpcmVkOgor
ICAtIGNvbXBhdGlibGUKKyAgLSByZWcKKyAgLSBjbG9ja3MKKyAgLSBjbG9jay1uYW1lcworICAt
IHJlc2V0cworICAtICIjcGh5LWNlbGxzIgorCitpZjoKKyAgcHJvcGVydGllczoKKyAgICBjb21w
YXRpYmxlOgorICAgICAgZW51bToKKyAgICAgICAgLSBicmNtLGJjbTYzMTgtdXNiaC1waHkKKyAg
ICAgICAgLSBicmNtLGJjbTYzMjgtdXNiaC1waHkKKyAgICAgICAgLSBicmNtLGJjbTYzNjItdXNi
aC1waHkKKyAgICAgICAgLSBicmNtLGJjbTYzMjY4LXVzYmgtcGh5CisKK3RoZW46CisgIHByb3Bl
cnRpZXM6CisgICAgcG93ZXItZG9tYWluczoKKyAgICAgIG1heEl0ZW1zOiAxCisgIHJlcXVpcmVk
OgorICAgIC0gcG93ZXItZG9tYWlucworCitleGFtcGxlczoKKyAgLSB8CisgICAgdXNiaDogdXNi
LXBoeUAxMDAwMTcwMCB7CisgICAgICBjb21wYXRpYmxlID0gImJyY20sYmNtNjM2OC11c2JoLXBo
eSI7CisgICAgICByZWcgPSA8MHgxMDAwMTcwMCAweDM4PjsKKyAgICAgIGNsb2NrcyA9IDwmcGVy
aXBoX2NsayBCQ002MzY4X0NMS19VU0JIPjsKKyAgICAgIGNsb2NrLW5hbWVzID0gInVzYmgiOwor
ICAgICAgcmVzZXRzID0gPCZwZXJpcGhfcnN0IEJDTTYzNjhfUlNUX1VTQkg+OworICAgICAgI3Bo
eS1jZWxscyA9IDwxPjsKKyAgICB9OwotLSAKMi4yNy4wCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
