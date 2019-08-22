Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90AAF9A239
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 23:33:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dr+DM/vskfyylpGpu2E0TDC9LkwDkrG5wSxrMqOGQ28=; b=Q851MuTKTrQ5aR
	WrI2qJfsW9fOu3gBSDlkxPqu+A/NXV/671X4wrIP5ytnLdju6bPdg+LVevVl0qiDiKKP8CwWWWUu5
	XSAQJtOXLtAjwxuKPgxQuPEOh/W4RxcIPoUfk+CxaXTuW/rOFtiDpotNHbKYBCDXjoSfaDM3/EueW
	74gYBTQIk1XS23xsHzOQT6WMys8XceuIRPOJgKGGnpGKXWv4lfIxuIT2sXF9e3IqsFT5utQn1xtG0
	wAEqy1nvjyB7Q8aOkax04A+t/GPU1L/o3ThHSH9/85QOuBb1Nlz6y/HQVh4sPiVcxjYa5Ngw+bH/k
	lMB5EHQBtEEYfIvEBm8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0ui9-0004xw-E9; Thu, 22 Aug 2019 21:33:37 +0000
Received: from mail-qk1-x735.google.com ([2607:f8b0:4864:20::735])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0ui0-0004xb-Ph
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 21:33:30 +0000
Received: by mail-qk1-x735.google.com with SMTP id r21so6534773qke.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 14:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:mime-version
 :content-transfer-encoding;
 bh=vxPfoC0K37mnp3V+GpCj023qxV0rNOwXkgRWVieVWW8=;
 b=PLrk8H2BymBEZahoF59hFB0vu+Rlj3dcFORH8U/VLQz5lmfldbLWbXm5lPRI6y9DaB
 jdBGob2L93ac72r5a/vhZb9zgfuo1Clq/S/LtTzt8w2WPtEnU6gy1WkFc9HR42wqI7YN
 Tq+AKWjKxwpEHbNANfdNs5d6ojZDpSNbNVIdZXUTOMG/ErQlEKVf4duJgz2baPpBTh2u
 TeFyb2MXctxh3mP0iZ1K4sL9dAYSsO4AB8wRnJ02EguJTYDH6oJG/f5g0oA1k5Uv301F
 Y6jgIPWhTtznIskycpFi+MFl7G6b/IpyAhufT1Kf6kY3Q2Zxykt4TJDaQm0MqRJ82jFW
 OzKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:mime-version
 :content-transfer-encoding;
 bh=vxPfoC0K37mnp3V+GpCj023qxV0rNOwXkgRWVieVWW8=;
 b=ploh5RElc2/fTJEkoSVomZEMd+xYWspmTmeAIVqizXdspORrX7O6XYRXHNOO3thyI1
 y9SAsPPBKkLbdocs4D7GofgPfbqiAStlFNMsKgbCW/qOXaZElCkrhKSDzwXvtfmPJQDg
 QpgT/yxc5SuZi2zXPyqR8FsrBhZTGM32korNHcMBdSYNstM5WXqS28ydr/rMC2x3xVA5
 olmPhKzAui9GKkhH0xy9z9gWZXljOqeNzjI5+bA1G1/oREnYq2ceMzAWCBz174ijPLzS
 7Xew1rPrL5XqKNO3+Fc9anxTFRYGkUn+R3NNcwjNXKWr+hJVNglDSwWIU6Fu91NoDdDm
 XVpA==
X-Gm-Message-State: APjAAAUD8RlZFIBWeISs0ZI+5yfjvZGwxmhHlC7vluFP0DRCSrYTf9IS
 L94p3hkspa2nInGeVzUXp6zXVQ==
X-Google-Smtp-Source: APXvYqw9aoi8o93EJ/4REoOn/hD2msEp2fczdUdvUxTwn60eP5eTFH72s4ltjGJlxU8gy3C+4KkWrw==
X-Received: by 2002:ae9:dfc3:: with SMTP id t186mr1144058qkf.322.1566509606883; 
 Thu, 22 Aug 2019 14:33:26 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id u187sm493578qkh.110.2019.08.22.14.33.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 14:33:25 -0700 (PDT)
Message-ID: <1566509603.5576.10.camel@lca.pw>
Subject: page_alloc.shuffle=1 + CONFIG_PROVE_LOCKING=y = arm64 hang
From: Qian Cai <cai@lca.pw>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Date: Thu, 22 Aug 2019 17:33:23 -0400
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_143328_862507_153EB4A3 
X-CRM114-Status: UNSURE (   6.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:735 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peter Zijlstra <peterz@infradead.org>, linux-mm@kvack.org,
 Dan Williams <dan.j.williams@intel.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL2NhaWxjYS9saW51eC1tbS9tYXN0ZXIv
YXJtNjQuY29uZmlnCgpCb290aW5nIGFuIGFybTY0IFRodW5kZXJYMiBzZXJ2ZXIgd2l0aCBwYWdl
X2FsbG9jLnNodWZmbGU9MSBbMV0gKwpDT05GSUdfUFJPVkVfTE9DS0lORz15wqByZXN1bHRzIGlu
IGhhbmdpbmcuCgpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbW0vMTU0ODk5ODEx
MjA4LjMxNjUyMzMuMTc2MjMyMDkwMzEwNjUxMjE4ODYucwp0Z2l0QGR3aWxsaWEyLWRlc2szLmFt
ci5jb3JwLmludGVsLmNvbS8KCi4uLgpbwqDCoDEyNS4xNDI2ODldW8KgwqDCoMKgVDFdIGFybS1z
bW11LXYzIGFybS1zbW11LXYzLjIuYXV0bzogb3B0aW9uIG1hc2sgMHgyClvCoMKgMTI1LjE0OTY4
N11bwqDCoMKgwqBUMV0gYXJtLXNtbXUtdjMgYXJtLXNtbXUtdjMuMi5hdXRvOiBpYXMgNDQtYml0
LCBvYXMgNDQtYml0CihmZWF0dXJlcyAweDAwMDAxNzBkKQpbwqDCoDEyNS4xNjUxOThdW8KgwqDC
oMKgVDFdIGFybS1zbW11LXYzIGFybS1zbW11LXYzLjIuYXV0bzogYWxsb2NhdGVkIDUyNDI4OCBl
bnRyaWVzCmZvciBjbWRxClvCoMKgMTI1LjIzOTQyNV1bIFvCoMKgMTI1LjI1MTQ4NF1bwqDCoMKg
wqBUMV0gYXJtLXNtbXUtdjMgYXJtLXNtbXUtdjMuMy5hdXRvOiBvcHRpb24KbWFzayAweDIKW8Kg
wqAxMjUuMjU4MjMzXVvCoMKgwqDCoFQxXSBhcm0tc21tdS12MyBhcm0tc21tdS12My4zLmF1dG86
IGlhcyA0NC1iaXQsIG9hcyA0NC1iaXQKKGZlYXR1cmVzIDB4MDAwMDE3MGQpClvCoMKgMTI1LjI4
Mjc1MF1bwqDCoMKgwqBUMV0gYXJtLXNtbXUtdjMgYXJtLXNtbXUtdjMuMy5hdXRvOiBhbGxvY2F0
ZWQgNTI0Mjg4IGVudHJpZXMKZm9yIGNtZHEKW8KgwqAxMjUuMzIwMDk3XVvCoMKgwqDCoFQxXSBh
cm0tc21tdS12MyBhcm0tc21tdS12My4zLmF1dG86IGFsbG9jYXRlZCA1MjQyODggZW50cmllcwpm
b3IgZXZ0cQpbwqDCoDEyNS4zMzI2NjddW8KgwqDCoMKgVDFdIGFybS1zbW11LXYzIGFybS1zbW11
LXYzLjQuYXV0bzogb3B0aW9uIG1hc2sgMHgyClvCoMKgMTI1LjMzOTQyN11bwqDCoMKgwqBUMV0g
YXJtLXNtbXUtdjMgYXJtLXNtbXUtdjMuNC5hdXRvOiBpYXMgNDQtYml0LCBvYXMgNDQtYml0Cihm
ZWF0dXJlcyAweDAwMDAxNzBkKQpbwqDCoDEyNS4zNTQ4NDZdW8KgwqDCoMKgVDFdIGFybS1zbW11
LXYzIGFybS1zbW11LXYzLjQuYXV0bzogYWxsb2NhdGVkIDUyNDI4OCBlbnRyaWVzCmZvciBjbWRx
ClvCoMKgMTI1LjM3NTI5NV1bwqDCoMKgwqBUMV0gYXJtLXNtbXUtdjMgYXJtLXNtbXUtdjMuNC5h
dXRvOiBhbGxvY2F0ZWQgNTI0Mjg4IGVudHJpZXMKZm9yIGV2dHEKW8KgwqAxMjUuMzg3MzcxXVvC
oMKgwqDCoFQxXSBhcm0tc21tdS12MyBhcm0tc21tdS12My41LmF1dG86IG9wdGlvbiBtYXNrIDB4
MgpbwqDCoDEyNS4zOTM5NTVdW8KgwqDCoMKgVDFdIGFybS1zbW11LXYzIGFybS1zbW11LXYzLjUu
YXV0bzogaWFzIDQ0LWJpdCwgb2FzIDQ0LWJpdAooZmVhdHVyZXMgMHgwMDAwMTcwZCkKW8KgwqAx
MjUuNTIyNjA1XVvCoMKgwqDCoFQxXSBhcm0tc21tdS12MyBhcm0tc21tdS12My41LmF1dG86IGFs
bG9jYXRlZCA1MjQyODggZW50cmllcwpmb3IgY21kcQpbwqDCoDEyNS41NDMzMzhdW8KgwqDCoMKg
VDFdIGFybS1zbW11LXYzIGFybS1zbW11LXYzLjUuYXV0bzogYWxsb2NhdGVkIDUyNDI4OCBlbnRy
aWVzCmZvciBldnRxClvCoMKgMTI2LjY5NDc0Ml1bwqDCoMKgwqBUMV0gRUZJIFZhcmlhYmxlcyBG
YWNpbGl0eSB2MC4wOCAyMDA0LU1heS0xNwpbwqDCoDEyNi43OTkyOTFdW8KgwqDCoMKgVDFdIE5F
VDogUmVnaXN0ZXJlZCBwcm90b2NvbCBmYW1pbHkgMTcKW8KgwqAxMjYuOTc4NjMyXVvCoMKgwqDC
oFQxXSB6c3dhcDogbG9hZGVkIHVzaW5nIHBvb2wgbHpvL3pidWQKW8KgwqAxMjYuOTg5MTY4XVvC
oMKgwqDCoFQxXSBrbWVtbGVhazogS2VybmVsIG1lbW9yeSBsZWFrIGRldGVjdG9yIGluaXRpYWxp
emVkClvCoMKgMTI2Ljk4OTE5MV1bIFQxNTc3XSBrbWVtbGVhazogQXV0b21hdGljIG1lbW9yeSBz
Y2FubmluZyB0aHJlYWQgc3RhcnRlZApbwqDCoDEyNy4wNDQwNzldWyBUMTMzNV0gcGNpZXBvcnQg
MDAwMDowZjowMC4wOiBBZGRpbmcgdG8gaW9tbXUgZ3JvdXAgMApbwqDCoDEyNy4zODgwNzRdW8Kg
wqDCoMKgVDFdIEZyZWVpbmcgdW51c2VkIGtlcm5lbCBtZW1vcnk6IDIyNTI4SwpbwqDCoDEzMy41
MjcwMDVdW8KgwqDCoMKgVDFdIENoZWNrZWQgVytYIG1hcHBpbmdzOiBwYXNzZWQsIG5vIFcrWCBw
YWdlcyBmb3VuZApbwqDCoDEzMy41MzM0NzRdW8KgwqDCoMKgVDFdIFJ1biAvaW5pdCBhcyBpbml0
IHByb2Nlc3MKW8KgwqAxMzMuNzI3MTk2XVvCoMKgwqDCoFQxXSBzeXN0ZW1kWzFdOiBTeXN0ZW0g
dGltZSBiZWZvcmUgYnVpbGQgdGltZSwgYWR2YW5jaW5nCmNsb2NrLgpbwqDCoDEzNC41NzYwMjFd
WyBUMTU4N10gbW9kcHJvYmUgKDE1ODcpIHVzZWQgZ3JlYXRlc3Qgc3RhY2sgZGVwdGg6IDI3MDU2
IGJ5dGVzCmxlZnQKW8KgwqAxMzQuNzY0MDI2XVvCoMKgwqDCoFQxXSBzeXN0ZW1kWzFdOiBzeXN0
ZW1kIDIzOSBydW5uaW5nIGluIHN5c3RlbSBtb2RlLiAoK1BBTQorQVVESVQgK1NFTElOVVggK0lN
QSAtQVBQQVJNT1IgK1NNQUNLICtTWVNWSU5JVCArVVRNUCArTElCQ1JZUFRTRVRVUCArR0NSWVBU
CitHTlVUTFMgK0FDTCArWFogK0xaNCArU0VDQ09NUCArQkxLSUQgK0VMRlVUSUxTICtLTU9EICtJ
RE4yIC1JRE4gK1BDUkUyIGRlZmF1bHQtCmhpZXJhcmNoeT1sZWdhY3kpClvCoMKgMTM0Ljc5OTA0
NF1bwqDCoMKgwqBUMV0gc3lzdGVtZFsxXTogRGV0ZWN0ZWQgYXJjaGl0ZWN0dXJlIGFybTY0Lgpb
wqDCoDEzNC44MDQ4MThdW8KgwqDCoMKgVDFdIHN5c3RlbWRbMV06IFJ1bm5pbmcgaW4gaW5pdGlh
bCBSQU0gZGlzay4KPC4uLmhhbmcuLi4+CgpGaXggaXQgYnkgZWl0aGVyIHNldCBwYWdlX2FsbG9j
LnNodWZmbGU9MCBvciBDT05GSUdfUFJPVkVfTE9DS0lORz1uIHdoaWNoIGFsbG93Cml0IHRvIGNv
bnRpbnVlIHN1Y2Nlc3NmdWxseS4KCgpbwqDCoDEyMS4wOTM4NDZdW8KgwqDCoMKgVDFdIHN5c3Rl
bWRbMV06IFNldCBob3N0bmFtZSB0byA8aHBlLWFwb2xsby1jbjk5eHg+LgpbwqDCoDEyMy4xNTc1
MjRdW8KgwqDCoMKgVDFdIHJhbmRvbTogc3lzdGVtZDogdW5pbml0aWFsaXplZCB1cmFuZG9tIHJl
YWQgKDE2IGJ5dGVzCnJlYWQpClvCoMKgMTIzLjE2ODU2Ml1bwqDCoMKgwqBUMV0gc3lzdGVtZFsx
XTogTGlzdGVuaW5nIG9uIEpvdXJuYWwgU29ja2V0LgpbwqDCoE9LwqDCoF0gTGlzdGVuaW5nIG9u
IEpvdXJuYWwgU29ja2V0LgpbwqDCoDEyMy4yMDM5MzJdW8KgwqDCoMKgVDFdIHJhbmRvbTogc3lz
dGVtZDogdW5pbml0aWFsaXplZCB1cmFuZG9tIHJlYWQgKDE2IGJ5dGVzCnJlYWQpClvCoMKgMTIz
LjIxMjgxM11bwqDCoMKgwqBUMV0gc3lzdGVtZFsxXTogTGlzdGVuaW5nIG9uIHVkZXYgS2VybmVs
IFNvY2tldC4KW8KgwqBPS8KgwqBdIExpc3RlbmluZyBvbiB1ZGV2IEtlcm5lbCBTb2NrZXQuCi4u
LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
