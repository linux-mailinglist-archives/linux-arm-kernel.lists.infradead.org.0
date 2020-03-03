Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4969C1769DA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 02:08:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9dnOs4tyWdSsrqh8USKV+pB3a26NnUhUEpeMLt1W5vY=; b=IcEboOjCx50jUH
	AWiP2GwrBnNXPoc0Ia1auaZQXgSHSU7sYlWDL2oK8dTdk86bUpJpJPH9rt4KrEX1vuS3WtEDiFqrK
	t3hHomFnqgI7ODo31mDVjYwvFXKhMNLkOKpR63EGiqsHdkoBXJ0yWSrUfvHpek34pKNitaRHWABrm
	rui9dIiDlS2L4+u7pvGVxsQPlCXQaD9gMBqnurNykYBNc+SlOe0TZn1K0ahrjEnlg03LimvpY7GWC
	a0WD3Gv6OrA6rUHr+5x0Hd1rWbEie75BK32uy4/pikj+GuOqWIfOAQsJK/h79AOgH/lnHv5tFOaFS
	rWtRWNeoHCEyh5oSI5/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8w2e-0001EW-So; Tue, 03 Mar 2020 01:08:12 +0000
Received: from m15-22.126.com ([220.181.15.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8w2V-0001E1-ND
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 01:08:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=78CRT
 gwbiCsGKy4gJkWLpEEBPc/rLajLVqSkQfE4iRg=; b=j+85JgMOraSQyT7yVoDiw
 xOmt3V01MgRp7l/UQpOBuHGUpRPqPt/Jdj7cCfmGb/aSgD67FB8S4PkIRWOhobu8
 i9E/U0bw5UzPb4WWZiuJpvU8HJ9QNfha0U+FX8RCGatH+D3BHOMH9ii0rTOlBJgO
 BflnKs5+73k9N+8uflE3Rc=
Received: from figure1802$126.com ( [192.102.204.36] ) by
 ajax-webmail-wmsvr22 (Coremail) ; Tue, 3 Mar 2020 09:08:00 +0800 (CST)
X-Originating-IP: [192.102.204.36]
Date: Tue, 3 Mar 2020 09:08:00 +0800 (CST)
From: FF <figure1802@126.com>
To: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Subject: A quick question about ASID on KPTI
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.10 build 20190724(ac680a23)
 Copyright (c) 2002-2020 www.mailtech.cn 126com
MIME-Version: 1.0
Message-ID: <c427a03.eed.1709def7541.Coremail.figure1802@126.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: FsqowAC3vs7wrV1eGeOGAA--.34371W
X-CM-SenderInfo: pilj32bhryija6rslhhfrp/1tbiYA3bXlpD-LsqpAABs5
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_170804_122735_581E279F 
X-CRM114-Status: UNSURE (   6.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [figure1802[at]126.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [figure1802[at]126.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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

CmhpICBmb2xrcywKCmkgYW0gbG9vayBhdCBzb21lIHBhdGNoZXMgYWJvdXQgdGhlIEtQVEkgb24g
QVJNNjQsIGEgcXVpY2sgcXVlc3Rpb24gYWJvdXQgdGhlIEFTREkgb24gS1BUSToKT24gS1BJVCwg
aXQgd2lsbCBhbGxvY2F0ZSBhIHBhaXJzIEFTSUQgZm9yIGEgcHJvY2Vzcywgd2hlbiB0aGUgcHJv
Y2VzcyBydW5uaW5nIG9uIGtlcm5lbCBzcGFjZSwgaXQgd2lsbCBzZXQgdGhlIGV2ZW4gQVNJRCBp
bnRvIFRUQlIxIHJlZ2lzdGVyIGluIHRyYW1wX21hcF9rZXJuZWwgZnVuY3Rpb24sIHdoZW4gdGhl
IHByb2Nlc3MgcnVubmluZyBvbiBVc2VyIHNwYWNlLCBpdCB3aWxsIHNldCB0aGUgb2RkIEFTSUQg
aW50byB0aGUgVFRCUjEgcmVnaXN0ZXIgaW4gdHJhbXBfdW5tYXBfa2VybmVsIGZ1bmN0aW9uLgpt
eSBxdWVzdGlvbiBpcywgd2hlbiB0aGUgcHJvY2VzcyBydW5uaW5nIGluIGtlcm5lbCBzcGFjZSwg
aWYgdGhlIHByb2Nlc3Mgd2FudCB0byBhY2Nlc3MgdGhlIHVzZXJzcGFjZSBhZGRyZXNzIGJ5IGNv
cHlfdG8vZnJvbV91c2VyKCksIHRoZSBDUFUgd2lsbCBsb29rLXVwIHRoZSBUTEIgd2l0aCBldmVu
IEFTSUQgb3Igb2RkIEFTSUQ/IGlmIGl0IHVzZSBldmVuIEFTSUQgdG8gbG9vay11cMKgIFRMQiBm
b3IgdXNlcnNwYWNlLCBpdCB3aWxsIGFsd2F5cyBUTEIgbWlzcywgdGhhdCB3aWxsIGJlIHBlcmZv
cm1hbmNlIGltcGFjdC4gaXMgaXQgcmlnaHQ/IHBscyBjb3JyZWN0IG1lIGlmIGkgYW0gd3Jvbmcu
CgpCZXN0CkJlbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
