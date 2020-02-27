Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0930917295A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 21:17:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wx1FjnFF05IAE07UTcHfH994bUEp3ER4rwkqo03EKhY=; b=h11lx1FdDQMd4E
	sbDInIYc6cszUMQFIjlR5ZNtIE4hgm+YlUG71dTwvjPSEMscShCbP6GkN5bO367lcArEu84+1jo5z
	ihSBEk5dZaFM1NzC5WHxHPnjcTvhUijAjqCh+ek3FC2P+x81l1X23VpThBG/lUv5xUd0ULvmDv3kF
	V/GXyQqb+G+nDFZVzemZQbciKnf1PR6mdLh0y0bb9QhL4UzRdYDcEo9IUfufvA5t6GIRd0GYArfd0
	5Eg81nl4Dj7okb2Lox6wanspLKT2z5A1NWDjPJUcG0OiZtVTI513rBIQ2DjV95cH/pM9V1bDHJG0p
	vE/WPAYA3lh4I6sDyGkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7PaM-0003OC-Ev; Thu, 27 Feb 2020 20:16:42 +0000
Received: from gateway36.websitewelcome.com ([192.185.193.119])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7PaC-0003MS-59
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 20:16:33 +0000
Received: from cm17.websitewelcome.com (cm17.websitewelcome.com [100.42.49.20])
 by gateway36.websitewelcome.com (Postfix) with ESMTP id EC741400F3A1A
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 13:31:12 -0600 (CST)
Received: from br164.hostgator.com.br ([192.185.176.180]) by cmsmtp with SMTP
 id 7PZzj5WyJAGTX7PZzjEcK1; Thu, 27 Feb 2020 14:16:19 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=castello.eng.br; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O9Ta8jqoR7xvtXnW35tk+UGBKOY48qRRa7KgNc+IA7U=; b=lRMc9TaOZ2BZQfzftZUL7wYbgf
 bQJNrdeBEpvAO1rb9obaKegi8YN/JE6ibWNYlZVFkMAwEVlz60Hyrlpf4QI1neiB7DdfP6nywori7
 KeFc/a3b9kF3q9LFLQZivNdh5arO13LnoIil4AdUh5NLwR+E/8r8cVCpYatPqAkEj2XzIt4NCYami
 1drpAQGejnROIkhnuxTozzTorSka/VEWWjRVcUL7qJVW2FAJ5DzpO5tYyVUVvjxxh/87KeBfmvbrN
 5KeyOTgqiUWsQqoAy7LOQCv6lLxypH3OnVgWBksHBfhFm6hwG5AVTAqHpRusEQTatVbcNASTDg3TD
 AaAn+mjw==;
Received: from [191.31.195.84] (port=40030 helo=castello.castello)
 by br164.hostgator.com.br with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <matheus@castello.eng.br>)
 id 1j7PZy-002xJo-Fk; Thu, 27 Feb 2020 17:16:18 -0300
From: Matheus Castello <matheus@castello.eng.br>
To: afaerber@suse.de, manivannan.sadhasivam@linaro.org, mark.rutland@arm.com,
 robh+dt@kernel.org
Subject: [PATCH v1 0/2] Add Caninos Loucos Labrador SoM and Base Board Device
 Tree
Date: Thu, 27 Feb 2020 17:15:55 -0300
Message-Id: <20200227201557.368533-1-matheus@castello.eng.br>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - br164.hostgator.com.br
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - castello.eng.br
X-BWhitelist: no
X-Source-IP: 191.31.195.84
X-Source-L: No
X-Exim-ID: 1j7PZy-002xJo-Fk
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (castello.castello) [191.31.195.84]:40030
X-Source-Auth: matheus@castello.eng.br
X-Email-Count: 4
X-Source-Cap: Y2FzdGUyNDg7Y2FzdGUyNDg7YnIxNjQuaG9zdGdhdG9yLmNvbS5icg==
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_121632_339727_2C3DAEF2 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.193.119 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Matheus Castello <matheus@castello.eng.br>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q2FuaW5vcyBMb3Vjb3MgTGFicmFkb3IgaXMgYSBCcmF6aWxpYW4gcHJvamVjdCBvZiBvcGVuIFN5
c3RlbSBvbiBNb2R1bGVzIGFuZApCYXNlIEJvYXJkcyBiYXNlZCBvbiBMZW1ha2VyIEd1aXRhci4g
SXMgYW4gaW5pdGlhdGl2ZSBvZiBMU0ktVEVDIGEgbm9uLXByb2ZpdApvcmdhbml6YXRpb24uCgpU
aGUgTGFicmFkb3IgU29NIHYyIGlzIGJhc2VkIG9uIEFjdGlvbnMgU2VtaSBTNTAwIHByb2Nlc3Nv
ciB3aXRoIDE2R0IgZU1NQyBhbmQKMkdCIFJBTS4KClRoaXMgc2VyaWVzIGFkZHMgdGhlIGluaXRp
YWwgd29yayBmb3IgZGV2aWNlIHRyZWUgZmlsZXMgYW5kIGFsc28gYWRkcyB0aGUKdmVuZG9yLXBy
ZWZpeCBmb3IgdGhlIENhbmlub3MgcHJvZ3JhbS4gVGhlIHdvcmsgd2FzIGJhc2VkIG9uIHRoZSBB
bmRyZWFzIEbDpHJiZXIKZGV2aWNlIHRyZWVzIGZvciBMZW1ha2VyIEd1aXRhciwgdGhhbmtzIEFu
ZHJlYXMuCgpUZXN0ZWQgb24gbXkgQ2FuaW5vcyBMYWJyYWRvciB2Miwgb25seSBlYXJseWNvbiBz
ZXJpYWwgb3V0cHV0IGlzIGF2YWlsYWJsZSBmb3IKbm93LCB1c2luZyB0aGUgZmFrZSBjbG9jay4g
SSBoYXZlIGFscmVhZHkgd29ya2VkIG9uIHNvbWV0aGluZyBoZXJlIHRvIGFkZCB0aGUKY2xvY2tz
IGFuZCBwaW5jdHJsIG5vZGVzIHRvIG93bC1zNTAwLmR0c2ksIGJ1dCBJIHdvdWxkIGxpa2UgdG8g
Zmlyc3QgYWRkIHRoZQppbml0aWFsIGRldmljZSB0cmVlIGZpbGVzIGFuZCB0aGVuIHdvcmsgb24g
dGhlIG90aGVyIHBhdGNoZXMgY2FsbWx5LgoKQlIsCk1hdGhldXMgQ2FzdGVsbG8KCk1hdGhldXMg
Q2FzdGVsbG8gKDIpOgogIGR0LWJpbmRpbmdzOiBhcm06IGFjdGlvbnM6IERvY3VtZW50IENhbmlu
b3MgTG91Y29zIExhYnJhZG9yCiAgQVJNOiBkdHM6IEFkZCBDYW5pbm9zIExvdWNvcyBMYWJyYWRv
cgoKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9hY3Rpb25zLnlhbWwgICAgICB8ICA1ICsr
KwogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwgIHwgIDIgKysK
IGFyY2gvYXJtL2Jvb3QvZHRzL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICB8ICAzICstCiBh
cmNoL2FybS9ib290L2R0cy9vd2wtczUwMC1sYWJyYWRvci1iYi5kdHMgICAgfCAzMyArKysrKysr
KysrKysrKysrKysrCiBhcmNoL2FybS9ib290L2R0cy9vd2wtczUwMC1sYWJyYWRvci12Mi5kdHNp
ICAgfCAyMSArKysrKysrKysrKysKIDUgZmlsZXMgY2hhbmdlZCwgNjMgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2Jvb3QvZHRzL293bC1z
NTAwLWxhYnJhZG9yLWJiLmR0cwogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2Jvb3QvZHRz
L293bC1zNTAwLWxhYnJhZG9yLXYyLmR0c2kKCi0tCjIuMjUuMAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
