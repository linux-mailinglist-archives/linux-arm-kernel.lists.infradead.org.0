Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F85DF00AA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 16:04:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RPCFZWbrFAsKNqX3gBHdBt4tBXs6fwLSjKKb+yL8Dds=; b=afzpVhwYmvp1b0
	3oar98IYHcjvDWuxnQKNUTgYI4dTRWNzF95ghcZgOpj/pFv5JS7Kcgg4kuez12pcoFjvlyriQ5Fk1
	9KNP1+ZNohlJIU59BRBzSKTcA8LNslc0mkGrnNO/shou0aQ6pWAyyAFb27djZlHxal8DKckQCT8KX
	vaLK1Pzy+p2LuhEPy5yv8k0Qg26mZ+9htBJTnqOaR3moreY1LUBPlprB9VPns3QE2Mc4ZgR+MIR5l
	edcwq5E4NnOtK8LFeIsDtgLORjvRu/WNUw4kuHklI2tXa/zdvvaiJ0QWm0MDkRsO0vCPmG/un82gC
	uf8bCNFgR559KrIgJxgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS0NO-0007qX-OI; Tue, 05 Nov 2019 15:04:10 +0000
Received: from mail-vk1-f196.google.com ([209.85.221.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS0N0-0007jz-Pw
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 15:03:48 +0000
Received: by mail-vk1-f196.google.com with SMTP id d10so128028vke.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 07:03:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nnL4sQ1MwsPV07APVPjRkxUvJ7AfCkxzbofUbifb0/A=;
 b=b2AHjX2oOOsl9m2FifGngnq23+mO+GToIQ6AtCtTtvxZWmU6Zo6dL0rKKgGENMUPkL
 vNiyjqKSOvrV9Q6Id6UgRGdAIr8VCfz3ej983rYKKP19wRv1a8YfaSKO1fbQp5iujHge
 XRIjkF+mOqLD6cZ10ggs6F/xw0PAhstLWnfA72gOH+tsoqYv1aQV0fZjQNZeIJKd6Pke
 9dcmPv4YjmkAUBNffqIVC7puklYKG1/vPh1rm12ShIYhPvmbhDeDHXy+DNdJuGgfbYYV
 TL5GRG5DQlB3CfOMnIEscX+KFxpANh3B3J6ir9TRwJ2NatFKfmgzM7ApRACgPbxzpkbz
 E9Fg==
X-Gm-Message-State: APjAAAX7PzuYyH53HbWMMyE5N2YxX/CyaE6vrlNPLlMjQgP6WiomHssR
 AvppyDtpZCG4pDozJA97rPIF/A==
X-Google-Smtp-Source: APXvYqwWychV2LVvzOfDVo2D+0MC7p9Emkfk+zJZPTNi4GyqCYqCSvUA2B/HhH7bx/jfdZgtDmsTxg==
X-Received: by 2002:a1f:7843:: with SMTP id t64mr14722951vkc.9.1572966225311; 
 Tue, 05 Nov 2019 07:03:45 -0800 (PST)
Received: from localhost (li1038-30.members.linode.com. [45.33.96.30])
 by smtp.gmail.com with ESMTPSA id g2sm4294618vsp.11.2019.11.05.07.03.42
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Tue, 05 Nov 2019 07:03:44 -0800 (PST)
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org,
	arm@kernel.org
Subject: [GIT PULL 3/7] i.MX dt-bindings update for 5.5
Date: Tue,  5 Nov 2019 23:03:11 +0800
Message-Id: <20191105150315.15477-3-shawnguo@kernel.org>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191105150315.15477-1-shawnguo@kernel.org>
References: <20191105150315.15477-1-shawnguo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_070346_854516_D759AC64 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.196 listed in wl.mailspike.net]
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
Cc: Shawn Guo <shawnguo@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Li Yang <leoyang.li@nxp.com>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCA1NGVjYjhmNzAyOGM1ZWIzZDc0MGJi
ODJiMGYxZDkwZjJkZjYzYzVjOgoKICBMaW51eCA1LjQtcmMxICgyMDE5LTA5LTMwIDEwOjM1OjQw
IC0wNzAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6CgogIGdpdDov
L2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9zaGF3bmd1by9saW51eC5n
aXQgdGFncy9pbXgtYmluZGluZ3MtNS41Cgpmb3IgeW91IHRvIGZldGNoIGNoYW5nZXMgdXAgdG8g
YmI0MGMzZjdkNjNhZmFmNzY2NWVmZmFmMmU3NWE5ZjU1NjNlNTYwYToKCiAgZHQtYmluZGluZ3M6
IGFybTogZnNsOiBBZGQgbW9yZSBLb250cm9uIGkuTVg2VUwvVUxMIGNvbXBhdGlibGVzICgyMDE5
LTExLTA0IDIyOjM3OjU2ICswODAwKQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQppLk1YIGR0LWJpbmRpbmdzIHVwZGF0ZSBm
b3IgNS41OgogLSBVcGRhdGUgZnNsLnlhbWwgdG8gaW5jbHVkZSBEVCBjb21wYXRpYmxlcyBmb3Ig
Zm9sbG93aW5nIGRldmljZXM6CiAgIEtvYm8gQ2xhcmEgSEQsIGkuTVg4TU4gTFBERFI0IEVWSywg
UzMyVjIzNC1FVkIsIEtvbnRyb24gaS5NWDZVTC9VTEwKICAgYm9hcmRzLCBUb3JhZGV4IGFwYWxp
cy9jb2xpYnJpIGJvYXJkcywgVmFyaXNjaXRlIGFuZCBBcm1hZGV1cyBpLk1YNgogICBib2FyZHMu
CgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tCkFuZHJlYXMgS2VtbmFkZSAoMSk6CiAgICAgIGR0LWJpbmRpbmdzOiBhcm06IGZz
bDogYWRkIGNvbXBhdGlibGUgc3RyaW5nIGZvciBLb2JvIENsYXJhIEhECgpBbnNvbiBIdWFuZyAo
MSk6CiAgICAgIGR0LWJpbmRpbmdzOiBhcm06IGlteDogQWRkIHRoZSBpLk1YOE1OIExQRERSNCBF
VksgYm9hcmQKCkVkZHkgUGV0cmnImW9yICgxKToKICAgICAgZHQtYmluZGluZ3M6IGFybTogZnNs
OiBBZGQgdGhlIFMzMlYyMzQtRVZCIGJvYXJkCgpGcmllZGVyIFNjaHJlbXBmICgxKToKICAgICAg
ZHQtYmluZGluZ3M6IGFybTogZnNsOiBBZGQgbW9yZSBLb250cm9uIGkuTVg2VUwvVUxMIGNvbXBh
dGlibGVzCgpNYXJjZWwgWmlzd2lsZXIgKDIpOgogICAgICBkdC1iaW5kaW5nczogYXJtOiBmc2w6
IGFkZCBueHAgYmFzZWQgdG9yYWRleCBhcGFsaXMvY29saWJyaSBiaW5kaW5ncwogICAgICBkdC1i
aW5kaW5nczogYXJtOiBmc2w6IGFkZCBueHAgYmFzZWQgdG9yYWRleCBjb2xpYnJpLWlteDh4IGJp
bmRpbmdzCgpPbGl2ZXIgR3JhdXRlICgxKToKICAgICAgZHQtYmluZGluZ3M6IGFybTogZnNsOiBE
b2N1bWVudCBWYXJpc2NpdGUgaS5NWDZxIGRldmljZXRyZWUKClPDqWJhc3RpZW4gU3p5bWFuc2tp
ICgxKToKICAgICAgZHQtYmluZGluZ3M6IGFybTogRG9jdW1lbnQgQXJtYWRldXMgU29NIGFuZCBE
ZXYgYm9hcmRzIGRldmljZXRyZWUgYmluZGluZwoKIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9hcm0vZnNsLnlhbWwgfCA1OCArKysrKysrKysrKysrKysrKysrKysrKysrLQogMSBm
aWxlIGNoYW5nZWQsIDU3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
