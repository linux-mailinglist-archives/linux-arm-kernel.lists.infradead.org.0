Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC9E1BD4AD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 08:32:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JOyHGGvTVgDnRsPEnCYVTMpF9GkW2D5p5VRAU5ee190=; b=s2Z4oUBpfTYm0u
	yQ7tCOJca5zrwExfsCc1dMG/ofgfbP+6qS8v49PmRjbYUUM7DSI0BDm2ZXy1nFE0XuQo5laENLINK
	FuWKfruK0AhbV+iMxym+uGoOZdqnFLN3NmHUd3SLsbibmMxNCPo/rCuAwVHYLigYdB7HiNY+QgDh1
	pNubJer9H81JNzjSUjnj7IZfJhj7tuDGwBHL+02c3mkldA1mCIFgBKm2YcHGHFs7TblyArBz35r2z
	/eAkVd9RMnyaf7jwSScIhLC79XAl7Qxz8utlrAqD3+MnC5ia9ZVYaoL0ku9voSv1hX/mC5NtlhABl
	pB5uuYMZuEBHmwu8XSTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTgH2-0004bB-PK; Wed, 29 Apr 2020 06:32:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTgGr-0004aH-AZ
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 06:32:38 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D6EE9206F0;
 Wed, 29 Apr 2020 06:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588141956;
 bh=7K04gbC6YJubJ8jDu5dnWOGDQdFYTaUdEIPDlFuIvlo=;
 h=Date:From:List-Id:To:Cc:Subject:From;
 b=CK3VEMJryxKJYUJt60SJGhuwdUNvOeSQH6k07LqrEYQKPAww090B4hHmlTZWVm259
 3hyEpmyRgqs7Wqrk0VONIREL6pSI2bhsgE51EBvgHYwe5SqtWr5gwgifX3IhYX0E9o
 ldfOIlILOceid4Rhi4RlUMTEglhwvtOY8UoMoiG8=
Date: Wed, 29 Apr 2020 14:32:31 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org, arm@kernel.org
Subject: [GIT PULL] i.MX fixes for 5.7
Message-ID: <20200429063226.GT32592@dragon>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_233237_387772_F330D945 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCA4ZjNkOWYzNTQyODY3NDVjNzUxMzc0
ZjVmMWZjYWZlZTZiM2YzMTM2OgoKICBMaW51eCA1LjctcmMxICgyMDIwLTA0LTEyIDEyOjM1OjU1
IC0wNzAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6CgogIGdpdDov
L2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9zaGF3bmd1by9saW51eC5n
aXQgdGFncy9pbXgtZml4ZXMtNS43Cgpmb3IgeW91IHRvIGZldGNoIGNoYW5nZXMgdXAgdG8gMTI0
OGM4NmZkNjM5MWM2M2RhOTQ3NzE4YmJkNDM2ODZmYTk1MTg1ZjoKCiAgYXJtNjQ6IGR0czogZnJl
ZXNjYWxlOiBpbXg4bXA6IHVwZGF0ZSBpbnB1dF92YWwgZm9yIEFVRElPTUlYX0JJVF9TVFJFQU0g
KDIwMjAtMDQtMjkgMTE6MzA6MzIgKzA4MDApCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCmkuTVggZml4ZXMgZm9yIDUuNzoK
CiAtIFNldCBjb3JyZWN0IEFIQiBjbG9jayBmb3IgaS5NWDhNTiBTRE1BMSBkZXZpY2UgdG8gZml4
IGEgIlRpbWVvdXQKICAgd2FpdGluZyBmb3IgQ0gwIiBlcnJvci4KIC0gRml4IGEgbGlua2VyIGVy
cm9yIGZvciBpLk1YNiBjb25maWd1cmF0aW9ucyB0aGF0IGhhdmUgQVJNX0NQVV9TVVNQRU5EPW4s
CiAgIHdoaWNoIGNhbiBoYXBwZW4gaWYgbmVpdGhlciBDT05GSUdfUE0sIENPTkZJR19DUFVfSURM
RSwgbm9yIEFSTV9QU0NJX0ZXCiAgIGFyZSBzZWxlY3RlZC4KIC0gRml4IEkyQzEgcGluY3RybCBj
b25maWd1cmF0aW9uIGZvciBpLk1YMjcgcGh5dGVjLXBoeWNhcmQgYm9hcmQuCiAtIEZpeCBpLk1Y
OE0gIEFJUFMgJ3JlZycgcHJvcGVydGllcyB0byByZW1vdmUgRFRDIHNpbXBsZV9idXNfcmVnCiAg
IHdhcm5pbmdzLgogLSBBZGQgbWlzc2luZyBjb21wYXRpYmxlICJmc2wsdmY2MTAtZWRtYSIgZm9y
IExTMTAyOEEgRURNQSBkZXZpY2UsIHNvCiAgIHRoYXQgYm9vdGxvYWRlciBjYW4gZml4IHVwIHRo
ZSBJT01NVSBlbnRyaWVzIHRoZXJlLiAgT3RoZXJ3aXNlLCBFRE1BCiAgIGp1c3QgZG9lc24ndCB3
b3JrIG9uIExTMTAyOEEgd2l0aCBzaGlwcGVkIGJvb3Rsb2FkZXIuCiAtIEZpeCBpbXg2ZGwteWFw
cDQtdXJzYSBib2FyZCBFdGhlcm5ldCBjb25uZWN0aW9uLgogLSBGaXggaW5wdXRfdmFsIGZvciBB
VURJT01JWF9CSVRfU1RSRUFNIHBpbmN0cmwgZGVmaW5lcyBvbiBpLk1YOE1QCiAgIGFjY29yZGlu
ZyB0byBSZWZlcmVuY2UgTWFudWFsLgoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpBZGFtIEZvcmQgKDEpOgogICAgICBhcm02
NDogZHRzOiBpbXg4bW46IENoYW5nZSBTRE1BMSBhaGIgY2xvY2sgZm9yIGlteDhtbgoKQWhtYWQg
RmF0b3VtICgxKToKICAgICAgQVJNOiBpbXg6IHByb3ZpZGUgdjdfY3B1X3Jlc3VtZSgpIG9ubHkg
b24gQVJNX0NQVV9TVVNQRU5EPXkKCkZhYmlvIEVzdGV2YW0gKDIpOgogICAgICBBUk06IGR0czog
aW14MjctcGh5dGVjLXBoeWNhcmQtcy1yZGs6IEZpeCB0aGUgSTJDMSBwaW5jdHJsIGVudHJpZXMK
ICAgICAgYXJtNjQ6IGR0czogaW14OG06IEZpeCBBSVBTIHJlZyBwcm9wZXJ0aWVzCgpNaWNoYWVs
IFdhbGxlICgyKToKICAgICAgZHQtYmluZGluZ3M6IGRtYTogZnNsLWVkbWE6IGZpeCBsczEwMjhh
LWVkbWEgY29tcGF0aWJsZQogICAgICBhcm02NDogZHRzOiBsczEwMjhhOiBhZGQgImZzbCx2ZjYx
MC1lZG1hIiBjb21wYXRpYmxlCgpNaWNoYWwgVm9rw6HEjSAoMSk6CiAgICAgIEFSTTogZHRzOiBp
bXg2ZGwteWFwcDQ6IEZpeCBVcnNhIGJvYXJkIEV0aGVybmV0IGNvbm5lY3Rpb24KClNoZW5naml1
IFdhbmcgKDEpOgogICAgICBhcm02NDogZHRzOiBmcmVlc2NhbGU6IGlteDhtcDogdXBkYXRlIGlu
cHV0X3ZhbCBmb3IgQVVESU9NSVhfQklUX1NUUkVBTQoKIERvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9kbWEvZnNsLWVkbWEudHh0IHwgIDMgKy0KIGFyY2gvYXJtL2Jvb3QvZHRzL2lt
eDI3LXBoeXRlYy1waHljYXJkLXMtcmRrLmR0cyAgIHwgIDQgKy0KIGFyY2gvYXJtL2Jvb3QvZHRz
L2lteDZkbC15YXBwNC11cnNhLmR0cyAgICAgICAgICAgIHwgIDIgKy0KIGFyY2gvYXJtL21hY2gt
aW14L01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDIgKwogYXJjaC9hcm02NC9i
b290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEuZHRzaSAgICAgfCAgMiArLQogYXJjaC9hcm02
NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1tLmR0c2kgICAgICAgICAgfCAgOCArKy0tCiBhcmNo
L2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bW4uZHRzaSAgICAgICAgICB8IDEwICsrLS0t
CiBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXAtcGluZnVuYy5oICAgICB8IDQ2
ICsrKysrKysrKysrLS0tLS0tLS0tLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lt
eDhtcC5kdHNpICAgICAgICAgIHwgIDYgKy0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2Fs
ZS9pbXg4bXEuZHRzaSAgICAgICAgICB8ICA4ICsrLS0KIDEwIGZpbGVzIGNoYW5nZWQsIDQ3IGlu
c2VydGlvbnMoKyksIDQ0IGRlbGV0aW9ucygtKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
