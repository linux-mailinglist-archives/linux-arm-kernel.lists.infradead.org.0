Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F17E10AD72
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 11:23:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3DI22mOJix6OBUPFKac6sjSMwWTKaaN9u46UomjAnzU=; b=cD+XdnpSRZ+NBw
	0PZ7C5j7mBvfJm1aXLZzKJu9BY56GmpHJVh3uN+0h+M4is7CTmnzwB4LmRE4Cv0YDUNQ/mTHFk4iB
	tMeDZx4hsCCf1+YXV7Jme08Lqbtgk56Ss5f941gqDXTSlj4y5PXit4Ap5wuX8PRpIICpELCTOYFyK
	ikX4GpjqB/Pgp0itz3mD2VAGVbAT5KXWiE75DT5nvbRHp5G8qifzfbDDCqVLGxxsHB4DhCIvz2qi3
	YWv7aQKtQ2aWRRBthvCEJcu76s8xUvNPCMZCPaDbxs3Rl/vLr3sasmvKhx6Pt4gXgYt/FNi+HzadY
	c2QWL5CWzypcZ2/4QTDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZuTU-0002oO-Rt; Wed, 27 Nov 2019 10:23:08 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZuTL-0002nj-M9
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 10:23:01 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xARAM3r3006174; Wed, 27 Nov 2019 11:22:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=DGAu8nBd8sSn0yVexjpoA/8nuPadx0SdCFMZkuAqTjI=;
 b=ygulLg2e5rLFuUd584h0vuVZhD+RKemgd493AWF3vztp/dF30AIlPn83ICzuODlilTxU
 68GX8ZqJt66704So7IBm4ukcmBA8GkDdLslHejaaqixJcgaRkjF4QV4GlSuEqvIBc29i
 mJXPz/6TRQqMtI9NOvyTIFIZVOTr3E1MxaRbvXKanIGnsjB2vYegAlDIYVe95fUGzwTH
 TIa7QobmHTOohdnwiXst1FjfyPY0PnoyjiRDohKzq/ZdTHdjt1LGIJ7puffGWhwdB21A
 jueEyE2x/gECpq6uTHG6hwTYfZLyQ6ePA6pSWlnSMDu3aBgDsku+AvNgXJ3yDN+V2OmP JA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2whcxj2xh5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 27 Nov 2019 11:22:51 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BF3FB10002A;
 Wed, 27 Nov 2019 11:22:50 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 199782B1211;
 Wed, 27 Nov 2019 11:22:51 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 27 Nov 2019 11:22:50 +0100
From: Yannick Fertre <yannick.fertre@st.com>
To: Yannick Fertre <yannick.fertre@st.com>, Philippe Cornu
 <philippe.cornu@st.com>, Benjamin Gaignard <benjamin.gaignard@st.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 <dri-devel@lists.freedesktop.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] drm/bridge/synopsys: dsi: check post disable
Date: Wed, 27 Nov 2019 11:22:45 +0100
Message-ID: <1574850165-13135-1-git-send-email-yannick.fertre@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-27_02:2019-11-27,2019-11-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_022300_086027_F780528B 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogWWFubmljayBGZXJ0csOpIDx5YW5uaWNrLmZlcnRyZUBzdC5jb20+CgpTb21lIGJyaWRn
ZXMgZGlkIG5vdCByZWdpc3RlcmVkIHRoZSBwb3N0X2Rpc2FibGUgZnVuY3Rpb24uClRvIGF2b2lk
IGEgY3Jhc2gsIGNoZWNrIGl0IGJlZm9yZSBjYWxsaW5nLgoKU2lnbmVkLW9mZi1ieTogWWFubmlj
ayBGZXJ0cmUgPHlhbm5pY2suZmVydHJlQHN0LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vYnJp
ZGdlL3N5bm9wc3lzL2R3LW1pcGktZHNpLmMgfCAzICsrLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9i
cmlkZ2Uvc3lub3BzeXMvZHctbWlwaS1kc2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lu
b3BzeXMvZHctbWlwaS1kc2kuYwppbmRleCBjYzgwNmJhLi4xZTM3MjMzIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LW1pcGktZHNpLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1taXBpLWRzaS5jCkBAIC04ODYsNyArODg2LDgg
QEAgc3RhdGljIHZvaWQgZHdfbWlwaV9kc2lfYnJpZGdlX3Bvc3RfZGlzYWJsZShzdHJ1Y3QgZHJt
X2JyaWRnZSAqYnJpZGdlKQogCSAqIFRoaXMgbmVlZHMgdG8gYmUgZml4ZWQgaW4gdGhlIGRybV9i
cmlkZ2UgZnJhbWV3b3JrIGFuZCB0aGUgQVBJCiAJICogbmVlZHMgdG8gYmUgdXBkYXRlZCB0byBt
YW5hZ2Ugb3VyIG93biBjYWxsIGNoYWlucy4uLgogCSAqLwotCWRzaS0+cGFuZWxfYnJpZGdlLT5m
dW5jcy0+cG9zdF9kaXNhYmxlKGRzaS0+cGFuZWxfYnJpZGdlKTsKKwlpZiAoZHNpLT5wYW5lbF9i
cmlkZ2UtPmZ1bmNzLT5wb3N0X2Rpc2FibGUpCisJCWRzaS0+cGFuZWxfYnJpZGdlLT5mdW5jcy0+
cG9zdF9kaXNhYmxlKGRzaS0+cGFuZWxfYnJpZGdlKTsKIAogCWlmIChkc2ktPnNsYXZlKSB7CiAJ
CWR3X21pcGlfZHNpX2Rpc2FibGUoZHNpLT5zbGF2ZSk7Ci0tIAoyLjcuNAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
