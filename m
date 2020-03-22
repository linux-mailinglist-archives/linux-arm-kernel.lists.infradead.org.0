Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A10E618EB78
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 19:20:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9bf+J3QbRGWxTk8yrj1yeGx49U62UXiUQqPc7LFONeU=; b=R8EIRA6hAhBiJX
	WtwHonPZ7+137kr+jtWqNkVBOhVCiYBnYi/+bzwQzFH4wi79sVsEHzFmSwEhibtF95zSnLcfWNG2e
	sybIRVnt770KxIYHs59zWoprh/eTTDHr9RtHMn1XxCW12j+KNcyH677+3HumrfjaYAECS9CxBg//e
	3DQaz7QUeq5vFTh42AtId5r0jbbw+LQ7hmKQIbOJeheXER89Q8KRymtjf7Gr7Sgcz3+Io/ml0CQOA
	4+3tvO8K6SKgoaNfRWqHyPNeYMYR/r4ocBNfAA0OVLH5ukldCBPoYwaP2KdPUjrO1EaWcqJOfWpUM
	uBfFTVr/fHnnaYvi2CkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG5DG-0006jq-SK; Sun, 22 Mar 2020 18:20:42 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG5D7-0006jU-3h
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Mar 2020 18:20:34 +0000
Received: by mail-wr1-x441.google.com with SMTP id h15so1777881wrx.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Mar 2020 11:20:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t3apGQx/GqllZ+jV6S8DJb0vx0h2r4kehTlpy1RNFcU=;
 b=Gk0AxS+Gybm8fEoRxAq3N95E77QJRP0db6HjhqDBM6FK88AdXw6V6XcmZMwRdiL082
 zoLzPL95MC67nQWljc0pxZu5mGZxY4iToZCfsEVWXNuNxc7+49IMb8W3IyX0qzeQiPl8
 VJ0XYQhI3ROie5f1lQQjT7GmdGvzsYZ+tttc0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t3apGQx/GqllZ+jV6S8DJb0vx0h2r4kehTlpy1RNFcU=;
 b=rcYqGV+F1WGXwdscMq4/cES55EdQm+TflfBNfmdkubvPuSlsfMSHI9mkklvka/Pb4p
 CoPPaMC06vW7Ezvn3soVlTz9LDAhnZ7gC11u4a1R8eo7lIbhGRDO2xdms5gUCj5rIJ8p
 buCs6c/3ZNNo4nhwsgeLZaWXu3fJLQGk3LxFIhD1BFXz4vqNKvJAKpHJ5H6ai3jxVdcV
 jIKHT3LnHYHYKeBk4IXb13o2YY57eHjmQj6jIC2iVSu5fplrR/XEJXTifhdEOfsoxv9n
 MUtrSyLae5ZxQ//QC4NeQ6//hq9nFh1F/XWCsCi1lSSiWMaA0Gyw4SJfrrccqkLbh8KC
 ZgdQ==
X-Gm-Message-State: ANhLgQ3KamR9jT4NcLbFLLquflSmbJbeFa4AwRG8UgYvkqojV3o4uiEJ
 aI1ZZiXNLaWip66NhFqZGJhirw==
X-Google-Smtp-Source: ADFU+vuN11G7CO1C7OcYmWhFxSNN5VvmFXqPfJtw7+8MCIrtSg2PNhWHSoNKE+R4l3s8tIriIiP3Ew==
X-Received: by 2002:adf:a457:: with SMTP id e23mr25054213wra.21.1584901231022; 
 Sun, 22 Mar 2020 11:20:31 -0700 (PDT)
Received: from rayagonda.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id i67sm20157090wri.50.2020.03.22.11.20.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Mar 2020 11:20:30 -0700 (PDT)
From: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
To: Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Wolfram Sang <wsa@the-dreams.de>,
 Lori Hikichi <lori.hikichi@broadcom.com>,
 Shreesha Rajashekar <shreesha.rajashekar@broadcom.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/1] i2c: iproc: generate stop event for slave writes
Date: Sun, 22 Mar 2020 23:50:19 +0530
Message-Id: <20200322182019.32493-1-rayagonda.kokatanur@broadcom.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_112033_155639_939D6A80 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2hlbiBzbGF2ZSBzdGF0dXMgaXMgSTJDX1NMQVZFX1JYX0VORCwgZ2VuZXJhdGUgSTJDX1NMQVZF
X1NUT1AKZXZlbnQgdG8gaTJjX2NsaWVudC4KCkZpeGVzOsKgYzI0NWQ5NGVkMTA2ICgiaTJjOiBp
cHJvYzogQWRkIG11bHRpIGJ5dGUgcmVhZC13cml0ZSBzdXBwb3J0IGZvciBzbGF2ZSBtb2RlIikK
U2lnbmVkLW9mZi1ieTogUmF5YWdvbmRhIEtva2F0YW51ciA8cmF5YWdvbmRhLmtva2F0YW51ckBi
cm9hZGNvbS5jb20+Ci0tLQogZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1iY20taXByb2MuYyB8IDMg
KysrCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9pMmMvYnVzc2VzL2kyYy1iY20taXByb2MuYyBiL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtYmNt
LWlwcm9jLmMKaW5kZXggMzBlZmI3OTEzYjJlLi5iNTgyMjRiN2JhNzkgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvaTJjL2J1c3Nlcy9pMmMtYmNtLWlwcm9jLmMKKysrIGIvZHJpdmVycy9pMmMvYnVzc2Vz
L2kyYy1iY20taXByb2MuYwpAQCAtMzYwLDYgKzM2MCw5IEBAIHN0YXRpYyBib29sIGJjbV9pcHJv
Y19pMmNfc2xhdmVfaXNyKHN0cnVjdCBiY21faXByb2NfaTJjX2RldiAqaXByb2NfaTJjLAogCQkJ
dmFsdWUgPSAodTgpKCh2YWwgPj4gU19SWF9EQVRBX1NISUZUKSAmIFNfUlhfREFUQV9NQVNLKTsK
IAkJCWkyY19zbGF2ZV9ldmVudChpcHJvY19pMmMtPnNsYXZlLAogCQkJCQlJMkNfU0xBVkVfV1JJ
VEVfUkVDRUlWRUQsICZ2YWx1ZSk7CisJCQlpZiAocnhfc3RhdHVzID09IEkyQ19TTEFWRV9SWF9F
TkQpCisJCQkJaTJjX3NsYXZlX2V2ZW50KGlwcm9jX2kyYy0+c2xhdmUsCisJCQkJCQlJMkNfU0xB
VkVfU1RPUCwgJnZhbHVlKTsKIAkJfQogCX0gZWxzZSBpZiAoc3RhdHVzICYgQklUKElTX1NfVFhf
VU5ERVJSVU5fU0hJRlQpKSB7CiAJCS8qIE1hc3RlciByZWFkIG90aGVyIHRoYW4gc3RhcnQgKi8K
LS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
