Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B08E18AEF2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 10:13:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wVbW44OoCJo9PIer+1iCXw3zp4ZWLPODOFxXdPGuDVg=; b=Cyttc5PBpaWRPX
	ZbO2hRPrvgAIcGn73ZoMYH4iRfebK7OoqI1qs4XJbrPh8Ydnk+eSFfFifqMTFtBfJ69Nfk9j2b1kb
	Kt8glhJivRuTJZZCZW6X3TbB9Wxvzs9jDMCN4tuXxQpIr1jWkT1PFnF5KhBLoAnUDSwpa+dDOGAil
	M4BlsmX95mpyVU4DpSmYaI5DLvc16CwWyiJcmLoYOzvwqDi89K7RNVqm1qyfl2gdjzhToPLjjeaMM
	Xa2FEoARPugBGssXVu4kLrQ6zMNOdjSdrJMXrwT5dWMG01EmwOh0jMKY40O+ZmQcjjIT/67Kh6Bsw
	jC0ce/Hpur5ekAqMXsbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jErEq-0005YE-T0; Thu, 19 Mar 2020 09:13:16 +0000
Received: from poy.remlab.net ([2001:41d0:2:5a1a::]
 helo=ns207790.ip-94-23-215.eu)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jErEj-0005Xl-Te
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 09:13:11 +0000
Received: from basile.remlab.net (87-92-31-51.bb.dnainternet.fi [87.92.31.51])
 (Authenticated sender: remi)
 by ns207790.ip-94-23-215.eu (Postfix) with ESMTPSA id 6848C5FB07;
 Thu, 19 Mar 2020 10:12:58 +0100 (CET)
From: =?ISO-8859-1?Q?R=E9mi?= Denis-Courmont <remi@remlab.net>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCHv3 0/3] clean up KPTI / SDEI trampoline data alignment
Date: Thu, 19 Mar 2020 11:12:56 +0200
Message-ID: <1938400.7m7sAWtiY1@basile.remlab.net>
Organization: Remlab
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_021310_096731_5277CA3F 
X-CRM114-Status: UNSURE (   5.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, James Morse <james.morse@arm.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CUhpLAoKVGhlIEtQVEkgYW5kIFNERSB0cmFtcG9saW5lcyBlYWNoIGxvYWQgYSBwb2ludGVyIGZy
b20gdGhlIHNhbWUgZml4bWFwIGRhdGEKcGFnZS4gVGhpcyByZWR1Y2VzIHRoZSBkYXRhIGFsaWdu
bWVudCB0byB0aGUgdXNlZnVsIHZhbHVlLCBhbmQgdHJpZXMgdG8KY2xhcmlmeSB0aGUgYXNzZW1i
bGVyIGNvZGUuCgpDaGFuZ2VzIHNpbmNlIHYyOgotIFJldGFpbiBhbGlnbm1lbnQgZXZlbiB3aGVu
IFNERUkgaXMgZGlzYWJsZWQgdG8ga2VlcCBsZCBoYXBweS4KCi0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KUsOpbWkgRGVuaXMt
Q291cm1vbnQgKDMpOgogICAgICBhcm02NDogY2xlYW4gdXAgdHJhbXBvbGluZSB2ZWN0b3IgbG9h
ZHMKICAgICAgYXJtNjQvc2RlaTogZ2F0aGVyIHRyYW1wb2xpbmVzJyAucm9kYXRhCiAgICAgIGFy
bTY0OiByZWR1Y2UgdHJhbXBvbGluZSBkYXRhIGFsaWdubWVudAoKIGFyY2gvYXJtNjQva2VybmVs
L2VudHJ5LlMgfCAyMyArKysrKysrKysrLS0tLS0tLS0tLS0tLQogYXJjaC9hcm02NC9tbS9tbXUu
YyAgICAgICB8ICA1ICsrLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDE2
IGRlbGV0aW9ucygtKQoKLS0gCtCg0LXQvNC4INCU0ZHQvdC4LdCa0YPRgNC80L7QvQpodHRwOi8v
d3d3LnJlbWxhYi5uZXQvCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
