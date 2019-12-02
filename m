Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDEC10EB03
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 14:45:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l/q7I5SjfxB7bcQqadld2WjhW0OY3Ti722jhP20sId4=; b=sPDdEM0utMeEwg
	nL+sNE7DSttVRcGJeyrj4wEoPGcF3wnbHA7BDoWDJVGN6JWPqgwRScyatnh52bqVxsk7W365dTM8+
	bg4KUVf0i4zhAD3lBvIHetJRdlMzYAoFuEE4MFDgcEykUoI+2viN5Ba6xhZYNBsZiKi5EyunrBsma
	O/VZxJq501gpyRg2Vgt2pOawl1/7gj+qO9/SWpzug0qN3k2v9ILEAHly1EHCzVmrctCeOaOA1v72l
	e9s5OEzkC8xzw47NCk1sxq8VdtfJUsfzKLKtJ4jjK4QXv3Miw/H7E+dDmlpmTu325+Dbl9Q+hEKtl
	xoK9sHWijWXDyMG/FOtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibm1D-0007Bh-MQ; Mon, 02 Dec 2019 13:45:39 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibm13-0007BN-Nr
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 13:45:31 +0000
Received: by mail-wm1-x343.google.com with SMTP id g206so21930295wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 05:45:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=KWDqcKWZeedBFFm4F7JOnGTR8JoGKWT55ZUJbiUqPGA=;
 b=ElvtWJZ+cCPmklplbOUer6+D7PjFv2PbguqdRtdIrZX+lhdNwGf26thXZT8kcvfJl3
 Cqsz7sp0EvgBoDYO8APYogpc5fZlsoo+r19LTAuI5LAIOZGfJu9rvaWpojExxwGyncFX
 852KKF1En07cH4zXQNmLkdbPcKmmNkbhuF4xPX0oP5NCDxymAU/oSFXR7gMTiksxE5Pv
 ucUPUX8xgGRobywB7CwTA5/19Xzu9m+NP5+CvgU12freookq+8U2UbNVvgBqK7yvzlc3
 wSlo+vpa54HQx24v1+299+ZZIpASzVXS/AjrRbHKihVM38bSWIkOLHu9nZnIFNHHuhIT
 fv8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:message-id:date:user-agent
 :mime-version:content-transfer-encoding:content-language;
 bh=KWDqcKWZeedBFFm4F7JOnGTR8JoGKWT55ZUJbiUqPGA=;
 b=bMnSPid/ho7dv9+tIPsuSV9I5QhZ1QobrBQH8xNp3j7QeDAvAJHzCg0uzk848YQPNE
 dtcfgfaIzYZTsOT9aZO5nCF95OETsmKKIgdNRDds3OkHjTZN9xAGOyIXU0h8F71WUPXg
 mwHfBrTp84oGw1U9twgtvbq5O08HXXMg/3eD/wIvEPyoT5S2cLQIkezjfbpF6CUiSPqe
 U8VOkZJLHYOc6qMyd80EgZRQWNrYw2jLiSGo7yqfj0RJBmAdy0SEAGAleRNtAkRc1r9B
 s4Xvj12YC3tOiRYM/dwyZAx8ibohBVrxJdg53thCjkzPoDHQyAFUJ6Hy9OIwwE5I5giO
 S77A==
X-Gm-Message-State: APjAAAXZ/jUdjjSWXHHna1joPWFsqT7OCzcPoqkVyOdbjlfJC6J1qxHY
 zqQU4KwO4Cf13J4Gu6HRe+E=
X-Google-Smtp-Source: APXvYqxQvxkWQgON5DzxrLvp726hjj6Yq+/cWuJafSGLJxNx8m/9Oy1DkA+6xa3ov63qCMzpt/gVzQ==
X-Received: by 2002:a7b:c216:: with SMTP id x22mr27960543wmi.51.1575294328217; 
 Mon, 02 Dec 2019 05:45:28 -0800 (PST)
Received: from [192.168.1.10] ([95.174.107.249])
 by smtp.gmail.com with ESMTPSA id u10sm948310wmd.1.2019.12.02.05.45.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 Dec 2019 05:45:27 -0800 (PST)
From: Igor Plyatov <plyatov@gmail.com>
Subject: Issue with imx_get_temp()
To: Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>, Shawn Guo
 <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Message-ID: <08794fde-cdd0-287c-62bf-e2e3b8c80686@gmail.com>
Date: Mon, 2 Dec 2019 16:45:26 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_054529_781800_C25CDE31 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [95.174.107.249 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (plyatov[at]gmail.com)
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RGVhciBhbGwsCgpwbGVhc2XCoCBsb29rIGF0IGJhY2stdHJhY2UgYmVsb3cuIEl0IGhhcHBlbnMg
b24gRnJlZXNjYWxlIGkuTVg2IFF1YWQuCgpGb3VuZCBhIGZldyBvZiB0aG9zZSBkdXJpbmcgcG93
ZXIgb24vb2ZmIHN0cmVzcyB0ZXN0IGluIHRoZSBjbGltYXRlIGNoYW1iZXI6CgpbICAgIDAuNjU3
NTk2XSAtLS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0tLS0tLS0tLS0tLS0KWyAgICAwLjY1NzYyNl0g
V0FSTklORzogQ1BVOiAzIFBJRDogMTUwIGF0IC9ob21lL2dlb3NpZy9kZXZlbG9wbWVudC9vZS1j
b3JlLXRvcmFkZXgtY3I3L2J1aWxkL3RtcC1nbGliYy93b3JrLXNoYXJlZC9jcjcva2VybmVsLXNv
dXJjZS9rZXJuZWwvaXJxL2NoaXAuYzoyNDIgX19pcnFfc3RhcnR1cCsweDk0LzB4YTgKWyAgICAw
LjY1NzYzMF0gTW9kdWxlcyBsaW5rZWQgaW46ClsgICAgMC42NTc2NDNdIENQVTogMyBQSUQ6IDE1
MCBDb21tOiBrd29ya2VyLzM6MSBOb3QgdGFpbnRlZCA1LjEuMSAjMQpbICAgIDAuNjU3NjQ4XSBI
YXJkd2FyZSBuYW1lOiBGcmVlc2NhbGUgaS5NWDYgUXVhZC9EdWFsTGl0ZSAoRGV2aWNlIFRyZWUp
ClsgICAgMC42NTc2NjBdIFdvcmtxdWV1ZTogZXZlbnRzIGRlZmVycmVkX3Byb2JlX3dvcmtfZnVu
YwpbICAgIDAuNjU3NjkxXSBbPDgwMTEwMDVjPl0gKHVud2luZF9iYWNrdHJhY2UpIGZyb20gWzw4
MDEwYjhjOD5dIChzaG93X3N0YWNrKzB4MTAvMHgxNCkKWyAgICAwLjY1NzcwOV0gWzw4MDEwYjhj
OD5dIChzaG93X3N0YWNrKSBmcm9tIFs8ODA4NTdiMDQ+XSAoZHVtcF9zdGFjaysweDg4LzB4OWMp
ClsgICAgMC42NTc3MjddIFs8ODA4NTdiMDQ+XSAoZHVtcF9zdGFjaykgZnJvbSBbPDgwMTFmMzA4
Pl0gKF9fd2FybisweGRjLzB4ZjQpClsgICAgMC42NTc3NDFdIFs8ODAxMWYzMDg+XSAoX193YXJu
KSBmcm9tIFs8ODAxMWY0Mzg+XSAod2Fybl9zbG93cGF0aF9udWxsKzB4NDAvMHg0OCkKWyAgICAw
LjY1Nzc1Ml0gWzw4MDExZjQzOD5dICh3YXJuX3Nsb3dwYXRoX251bGwpIGZyb20gWzw4MDE2ZDFh
OD5dIChfX2lycV9zdGFydHVwKzB4OTQvMHhhOCkKWyAgICAwLjY1Nzc2Ml0gWzw4MDE2ZDFhOD5d
IChfX2lycV9zdGFydHVwKSBmcm9tIFs8ODAxNmQyMDg+XSAoaXJxX3N0YXJ0dXArMHg0Yy8weDEz
MCkKWyAgICAwLjY1Nzc3Ml0gWzw4MDE2ZDIwOD5dIChpcnFfc3RhcnR1cCkgZnJvbSBbPDgwMTZh
NmRjPl0gKGVuYWJsZV9pcnErMHg0NC8weDkwKQpbICAgIDAuNjU3NzkwXSBbPDgwMTZhNmRjPl0g
KGVuYWJsZV9pcnEpIGZyb20gWzw4MDY2ZjA1Yz5dIChpbXhfZ2V0X3RlbXArMHgxYmMvMHgxZmMp
ClsgICAgMC42NTc4MDRdIFs8ODA2NmYwNWM+XSAoaW14X2dldF90ZW1wKSBmcm9tIFs8ODA2NmNk
Nzg+XSAodGhlcm1hbF96b25lX2dldF90ZW1wKzB4NDgvMHg2OCkKWyAgICAwLjY1NzgxNl0gWzw4
MDY2Y2Q3OD5dICh0aGVybWFsX3pvbmVfZ2V0X3RlbXApIGZyb20gWzw4MDY2YTNlND5dICh0aGVy
bWFsX3pvbmVfZGV2aWNlX3VwZGF0ZS5wYXJ0LjMrMHgyOC8weGNjKQpbICAgIDAuNjU3ODI3XSBb
PDgwNjZhM2U0Pl0gKHRoZXJtYWxfem9uZV9kZXZpY2VfdXBkYXRlLnBhcnQuMykgZnJvbSBbPDgw
NjZhZmM0Pl0gKHRoZXJtYWxfem9uZV9kZXZpY2VfcmVnaXN0ZXIrMHg0YWMvMHg1ZWMpClsgICAg
MC42NTc4MzddIFs8ODA2NmFmYzQ+XSAodGhlcm1hbF96b25lX2RldmljZV9yZWdpc3RlcikgZnJv
bSBbPDgwNjZmNTgwPl0gKGlteF90aGVybWFsX3Byb2JlKzB4M2E4LzB4NjFjKQpbICAgIDAuNjU3
ODUzXSBbPDgwNjZmNTgwPl0gKGlteF90aGVybWFsX3Byb2JlKSBmcm9tIFs8ODA1NGFlOTA+XSAo
cGxhdGZvcm1fZHJ2X3Byb2JlKzB4NDgvMHg5OCkKWyAgICAwLjY1Nzg2NF0gWzw4MDU0YWU5MD5d
IChwbGF0Zm9ybV9kcnZfcHJvYmUpIGZyb20gWzw4MDU0OTJhND5dIChyZWFsbHlfcHJvYmUrMHgy
MjgvMHgyZDApClsgICAgMC42NTc4NzVdIFs8ODA1NDkyYTQ+XSAocmVhbGx5X3Byb2JlKSBmcm9t
IFs8ODA1NDk0YWM+XSAoZHJpdmVyX3Byb2JlX2RldmljZSsweDYwLzB4MTc0KQpbICAgIDAuNjU3
ODkyXSBbPDgwNTQ5NGFjPl0gKGRyaXZlcl9wcm9iZV9kZXZpY2UpIGZyb20gWzw4MDU0NzZmND5d
IChidXNfZm9yX2VhY2hfZHJ2KzB4NTgvMHhiOCkKWyAgICAwLjY1NzkwM10gWzw4MDU0NzZmND5d
IChidXNfZm9yX2VhY2hfZHJ2KSBmcm9tIFs8ODA1NDkwMDg+XSAoX19kZXZpY2VfYXR0YWNoKzB4
ZDAvMHgxM2MpClsgICAgMC42NTc5MTRdIFs8ODA1NDkwMDg+XSAoX19kZXZpY2VfYXR0YWNoKSBm
cm9tIFs8ODA1NDg0MDQ+XSAoYnVzX3Byb2JlX2RldmljZSsweDg0LzB4OGMpClsgICAgMC42NTc5
MjNdIFs8ODA1NDg0MDQ+XSAoYnVzX3Byb2JlX2RldmljZSkgZnJvbSBbPDgwNTQ4ODljPl0gKGRl
ZmVycmVkX3Byb2JlX3dvcmtfZnVuYysweDY0LzB4OTApClsgICAgMC42NTc5MzhdIFs8ODA1NDg4
OWM+XSAoZGVmZXJyZWRfcHJvYmVfd29ya19mdW5jKSBmcm9tIFs8ODAxMzZmZDA+XSAocHJvY2Vz
c19vbmVfd29yaysweDIwNC8weDQyMCkKWyAgICAwLjY1Nzk1Ml0gWzw4MDEzNmZkMD5dIChwcm9j
ZXNzX29uZV93b3JrKSBmcm9tIFs8ODAxMzdkZGM+XSAod29ya2VyX3RocmVhZCsweDQ0LzB4NWJj
KQpbICAgIDAuNjU3OTY2XSBbPDgwMTM3ZGRjPl0gKHdvcmtlcl90aHJlYWQpIGZyb20gWzw4MDEz
Y2FiMD5dIChrdGhyZWFkKzB4MTQ0LzB4MTRjKQpbICAgIDAuNjU3OTc4XSBbPDgwMTNjYWIwPl0g
KGt0aHJlYWQpIGZyb20gWzw4MDEwMTBlOD5dIChyZXRfZnJvbV9mb3JrKzB4MTQvMHgyYykKWyAg
ICAwLjY1Nzk4NF0gRXhjZXB0aW9uIHN0YWNrKDB4ZDBhZTFmYjAgdG8gMHhkMGFlMWZmOCkKWyAg
ICAwLjY1Nzk5Ml0gMWZhMDogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMDAw
MDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAKWyAgICAwLjY1ODAwMl0gMWZjMDogMDAw
MDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAw
MDAgMDAwMDAwMDAKWyAgICAwLjY1ODAxMF0gMWZlMDogMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAw
MDAgMDAwMDAwMDAgMDAwMDAwMTMgMDAwMDAwMDAKWyAgICAwLjY1ODAxNl0gLS0tWyBlbmQgdHJh
Y2UgNmJiNTUzYTYwYzA4ODZiZCBdLS0tCgpDYW4gc29tZWJvZHkgcmVjb21tZW5kLCBob3cgdG8g
ZGVidWcvcmVzb2x2ZSB0aGlzIGlzc3VlPwoKQmVzdCB3aXNoZXMuCi0tCklnb3IgUGx5YXRvdgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
