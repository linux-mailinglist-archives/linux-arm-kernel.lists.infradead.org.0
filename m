Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A81344E8C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 23:34:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jUEBgC10zE5arsZbzUbdcaBTLSG78U1f+RVw/0D5gjY=; b=QVEaDIWTYorU5W
	7Dk3SmGpXd2MSXPAuoMZFa6gl0PmY5Gbibu1QZ4iqbar8Tqn9297FMgYm5FxO+N1Qfa7+IXWDV2Jj
	2sDLc9ATpNMlYxX8BWbu89dIzK+Be1cGEM4LDiRQx3mFi9ZvTeemFSKwmdhC3k4f5+6HqhuhP1XPM
	W/YMnAJceCf4f5MsG8eNItt411lmVb3g2WFB/68VGKpx9dsuSsy4ZCfHs/xyyhKfI8QupabeTBUAm
	Oscik0uJTMvwn1nnkDQWerU8z3N4zVn0VhJ6NsGRzuCI78JBTxorGYwWn7yRSvu4w/eeHKonOdB5a
	UyyDGia9hvFe7+Ii3qlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbXMP-00027H-Ly; Thu, 13 Jun 2019 21:34:17 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbXME-00026Y-Jw
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 21:34:08 +0000
Received: by mail-qk1-x742.google.com with SMTP id s22so349262qkj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 14:34:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:mime-version
 :content-transfer-encoding;
 bh=EVRWfobaNaVm+W0JKtsU9wphVcOIrKD7yE8vaQCIDqo=;
 b=NervFuQxG/81VFmsUiiCY8H4nhIU56bmosXRVYRjaky0QWBQGxLd9XbWPdWjljYqzR
 JS9GMv+ZL1VohRmjOZSuNsDtlm8GgYwxooElIywAHSeU9sGJhs1KDucUjndsq3tg00mT
 CbjN8rBPsfDeAyjfb8DorW7PHR9Sgm2UPOeRdyMyaKuwwygoXFY0t15R5KT4K9vkFxng
 6ZmRZIc+RXoxSvcgafwhBcoMd1taf8d7M9nY5tcSMMmbSEvko0ChLQ2gUX/KkLNJXNyg
 fSWHv4AQ3LUEN1VAuDe3jqFq+vOZIFNHxSGr2/Su6JVFO9USrPt1w+tiAQALOT4zx670
 xEGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:mime-version
 :content-transfer-encoding;
 bh=EVRWfobaNaVm+W0JKtsU9wphVcOIrKD7yE8vaQCIDqo=;
 b=gsC5dMPrWb2D50l8rZvVNbKr6FXV/c9FL5rRjNbLwa377EtnDcZXJxqAHYIdnYu6cw
 jO7w15G5sadli0kiXI+lS29VAqVC8gKhPuh6CD1zuu1mZQwUuUM1fA0hK747PtXQT3q6
 PORUVdlNxxCZDn9QDByDJbdPgno5kI3a1fxqEOZvvfmi8KsKwBku+I3S6cSw7i3HSdpK
 fB7dgGiyjR5/2+q96tqEFb/968zu8oxfMxnpQbJYYf4TPFL+tzRuKpoVtsXwYtsYiXUO
 D6r1J4tWqlymjmoDHMusJiPTpmDoAFd5YDd0QB+3XSjKtu97SqlZMHZ8ebGH2dt8r9Cw
 Q1wA==
X-Gm-Message-State: APjAAAWI4VZC9CLjSxtGqIy7BmQKm5rXoziffCl2KLJB5IP31xjyB2Et
 wIwZiOL6Y+b4HhGDkv08n3I9o2McOwM=
X-Google-Smtp-Source: APXvYqyDUpKRqoy2HstGgqJFci4mizZ3VAHPyqqsi0JxdZABzQE75j2jARmRfw1bRGsAs0PxOaQY4w==
X-Received: by 2002:ae9:f016:: with SMTP id l22mr34543234qkg.51.1560461642889; 
 Thu, 13 Jun 2019 14:34:02 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id y29sm498369qkj.8.2019.06.13.14.34.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 14:34:02 -0700 (PDT)
Message-ID: <1560461641.5154.19.camel@lca.pw>
Subject: LTP hugemmap05 test case failure on arm64 with linux-next
 (next-20190613)
From: Qian Cai <cai@lca.pw>
To: Will Deacon <will.deacon@arm.com>, Catalin Marinas
 <catalin.marinas@arm.com>
Date: Thu, 13 Jun 2019 17:34:01 -0400
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_143406_720864_806F27D0 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Anshuman Khandual <anshuman.khandual@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TFRQIGh1Z2VtbWFwMDUgdGVzdCBjYXNlIFsxXSBjb3VsZCBub3QgZXhpdCBpdHNlbGYgcHJvcGVy
bHkgYW5kIHRoZW4gZGVncmFkZSB0aGUKc3lzdGVtIHBlcmZvcm1hbmNlIG9uIGFybTY0IHdpdGgg
bGludXgtbmV4dCAobmV4dC0yMDE5MDYxMykuIFRoZSBiaXNlY3Rpb24gc28KZmFyIGluZGljYXRl
cywKCkJBRDogIDMwYmFmYmMzNTdmMSBNZXJnZSByZW1vdGUtdHJhY2tpbmcgYnJhbmNoICdhcm02
NC9mb3ItbmV4dC9jb3JlJwpHT09EOiAwYzNkMTI0YTMwNDMgTWVyZ2UgcmVtb3RlLXRyYWNraW5n
IGJyYW5jaCAnYXJtNjQtZml4ZXMvZm9yLW5leHQvZml4ZXMnCgpJIGRvbid0IHNlZSBhbnl0aGlu
ZyBvYnZpb3VzIGJldHdlZW4gdGhvc2UgdHdvIHB1bGwgcmVxdWVzdHMsIHNvIEkgZ3Vlc3MKc29t
ZXRoaW5nIGluICdhcm02NC9mb3ItbmV4dC9jb3JlJyBpcyB3cm9uZy4KCiQgZ2l0IGxvZyAtLW9u
ZWxpbmUgMzYxNDEzZWUxOTkyLi45YjYwNDcyMjA1OTAKOWI2MDQ3MjIwNTkwIGFybTY0OiBtbTog
YXZvaWQgcmVkdW5kYW50IFJFQURfT05DRSgqcHRlcCkKNDc0NTIyNGI0NTA5IGFybTY0L21tOiBS
ZWZhY3RvciBfX2RvX3BhZ2VfZmF1bHQoKQpjNDliZDAyZjRjNzQgYXJtNjQvbW06IERvY3VtZW50
IHdyaXRlIGFib3J0IGRldGVjdGlvbiBmcm9tIEVTUgo4ZTAxMDc2YWZkOTcgYXJtNjQ6IEZpeCBj
b21tZW50IGFmdGVyICNlbmRpZgpmMDg2ZjY3NDg1YzUgYXJtNjQ6IHB0cmFjZTogYWRkIHN1cHBv
cnQgZm9yIHN5c2NhbGwgZW11bGF0aW9uCmZkMzg2NjM4MWJlMiBhcm02NDogYWRkIFBUUkFDRV9T
WVNFTVV7LFNJTkdMRVNURVB9IGRlZmluYXRpb25zIHRvIHVhcGkgaGVhZGVycwoxNTUzMmZkNmY1
N2MgcHRyYWNlOiBtb3ZlIGNsZWFyaW5nIG9mIFRJRl9TWVNDQUxMX0VNVSBmbGFnIHRvIGNvcmUK
NjE2ODEwMzYwMDQzIGFybTY0L21tOiBEcm9wIHRhc2tfc3RydWN0IGFyZ3VtZW50IGZyb20gX19k
b19wYWdlX2ZhdWx0KCkKYTA1MDkzMTNkNWRlIGFybTY0L21tOiBEcm9wIG1tYXBfc2VtIGJlZm9y
ZSBjYWxsaW5nIF9fZG9fa2VybmVsX2ZhdWx0KCkKMDFkZTE3NzZmNjJlIGFybTY0L21tOiBJZGVu
dGlmeSB1c2VyIGluc3RydWN0aW9uIGFib3J0cwo4N2RlZGY3YzYxYWIgYXJtNjQvbW06IENoYW5n
ZSBCVUdfT04oKSB0byBWTV9CVUdfT04oKSBpbiBbcG1kfHB1ZF1fc2V0X2h1Z2UoKQoyZTZhZWU1
YWYzMzAgYXJtNjQ6IGtlcm5lbDogdXNlIGFmZjMgaW5zdGVhZCBvZiBhZmYyIGluIGNvbW1lbnQK
MjdlNmU3ZDYzZmMyIGFybTY0L2NwdWZlYXR1cmU6IENvbnZlcnQgaG9va19sb2NrIHRvIHJhd19z
cGluX2xvY2tfdCBpbgpjcHVfZW5hYmxlX3NzYnMoKQowYzFmMTRlZDEyMjYgYXJtNjQ6IG1tOiBt
YWtlIENPTkZJR19aT05FX0RNQTMyIGNvbmZpZ3VyYWJsZQpmN2YwMDk3YWY2N2MgYXJtNjQvbW06
IFNpbXBsaWZ5IHByb3RlY3Rpb24gZmxhZyBjcmVhdGlvbiBmb3Iga2VybmVsIGh1Z2UKbWFwcGlu
Z3MKN2I4Yzg3YjI5N2E3IGFybTY0OiBjYWNoZWluZm86IFVwZGF0ZSBjYWNoZV9saW5lX3NpemUg
ZGV0ZWN0ZWQgZnJvbSBEVCBvciBQUFRUCjlhODNjODRjM2E0OSBkcml2ZXJzOiBiYXNlOiBjYWNo
ZWluZm86IEFkZCB2YXJpYWJsZSB0byByZWNvcmQgbWF4IGNhY2hlIGxpbmUKc2l6ZQo2ZGNkZWZj
ZGU0MTMgYXJtNjQvZnBzaW1kOiBEb24ndCBkaXNhYmxlIHNvZnRpcnEgd2hlbiB0b3VjaGluZyBG
UFNJTUQvU1ZFIHN0YXRlCjU0YjhjN2NiYzU3YyBhcm02NC9mcHNpbWQ6IEludHJvZHVjZSBmcHNp
bWRfc2F2ZV9hbmRfZmx1c2hfY3B1X3N0YXRlKCkgYW5kIHVzZQppdAo2ZmE5YjQxZjZmMTUgYXJt
NjQvZnBzaW1kOiBSZW1vdmUgdGhlIHByb3RvdHlwZSBmb3Igc3ZlX2ZsdXNoX2NwdV9zdGF0ZSgp
CjIwMWQzNTVjMTVjMSBhcm02NC9tbTogTW92ZSBQVEVfVkFMSUQgZnJvbSBTVyBkZWZpbmVkIHRv
IEhXIHBhZ2UgdGFibGUgZW50cnkKZGVmaW5pdGlvbnMKNDQxYTYyNzgwNjg3IGFybTY0L2h1Z2V0
bGI6IFVzZSBtYWNyb3MgZm9yIGNvbnRpZ3VvdXMgaHVnZSBwYWdlIHNpemVzCgpbMV0gaHR0cHM6
Ly9naXRodWIuY29tL2xpbnV4LXRlc3QtcHJvamVjdC9sdHAvYmxvYi9tYXN0ZXIvdGVzdGNhc2Vz
L2tlcm5lbC9tZW0vaAp1Z2V0bGIvaHVnZW1tYXAvaHVnZW1tYXAwNS5jCgojIC9vcHQvbHRwL3Rl
c3RjYXNlcy9iaW4vaHVnZW1tYXAwNSAtcyAtbQp0c3RfdGVzdC5jOjExMTE6IElORk86IFRpbWVv
dXQgcGVyIHJ1biBpcyAwaCAwNW0gMDBzCmh1Z2VtbWFwMDUuYzoyMzU6IElORk86IG9yaWdpbmFs
IG5yX2h1Z2VwYWdlcyBpcyAwCmh1Z2VtbWFwMDUuYzoyNDg6IElORk86IG9yaWdpbmFsIG5yX292
ZXJjb21taXRfaHVnZXBhZ2VzIGlzIDAKVGVzdCB0aW1lb3V0ZWQsIHNlbmRpbmcgU0lHS0lMTCEK
VGVzdCB0aW1lb3V0ZWQsIHNlbmRpbmcgU0lHS0lMTCEKVGVzdCB0aW1lb3V0ZWQsIHNlbmRpbmcg
U0lHS0lMTCEKVGVzdCB0aW1lb3V0ZWQsIHNlbmRpbmcgU0lHS0lMTCEKVGVzdCB0aW1lb3V0ZWQs
IHNlbmRpbmcgU0lHS0lMTCEKVGVzdCB0aW1lb3V0ZWQsIHNlbmRpbmcgU0lHS0lMTCEKVGVzdCB0
aW1lb3V0ZWQsIHNlbmRpbmcgU0lHS0lMTCEKVGVzdCB0aW1lb3V0ZWQsIHNlbmRpbmcgU0lHS0lM
TCEKVGVzdCB0aW1lb3V0ZWQsIHNlbmRpbmcgU0lHS0lMTCEKVGVzdCB0aW1lb3V0ZWQsIHNlbmRp
bmcgU0lHS0lMTCEKVGVzdCB0aW1lb3V0ZWQsIHNlbmRpbmcgU0lHS0lMTCEKQ2Fubm90IGtpbGwg
dGVzdCBwcm9jZXNzZXMhCkNvbmdyYXR1bGF0aW9uLCBsaWtlbHkgdGVzdCBoaXQgYSBrZXJuZWwg
YnVnLgpFeGl0dGluZyB1bmNsZWFubHkuLi4KClsgNzc5Mi42ODE2OTFdWyBUNTAyNV0gTFRQOiBz
dGFydGluZyBodWdlbW1hcDA1XzMgKGh1Z2VtbWFwMDUgLXMgLW0pClsgNzkxMS4xNDkwNThdWyBU
MTMwOV0gSU5GTzogdGFzayBodWdlbW1hcDA1OjUxMDM1IGNhbid0IGRpZSBmb3IgbW9yZSB0aGFu
IDEyMgpzZWNvbmRzLgpbIDc5MTEuMTU2ODMzXVsgVDEzMDldIGh1Z2VtbWFwMDXCoMKgwqDCoMKg
wqBSwqDCoHJ1bm5pbmcgdGFza8KgwqDCoMKgMjc2NDggNTEwMzXCoMKgwqDCoMKgwqAxCjB4MDAw
MDAwMGQKWyA3OTExLjE2NDY1NF1bIFQxMzA5XSBDYWxsIHRyYWNlOgpbIDc5MTEuMTY3ODIzXVsg
VDEzMDldwqDCoF9fc3dpdGNoX3RvKzB4MmUwLzB4MzdjClsgNzkxMS4xNzIxMjhdWyBUMTMwOV3C
oMKgMHgzZTRjYQpbIDc5MTEuMTc1MDMzXVsgVDEzMDldwqAKWyA3OTExLjE3NTAzM11bIFQxMzA5
XSBTaG93aW5nIGFsbCBsb2NrcyBoZWxkIGluIHRoZSBzeXN0ZW06ClsgNzkxMS4xODI4ODhdWyBU
MTMwOV0gMSBsb2NrIGhlbGQgYnkga2h1bmd0YXNrZC8xMzA5OgpbIDc5MTEuMTg3Nzc4XVsgVDEz
MDldwqDCoCMwOiAwMDAwMDAwMDM3YTNlNTcyIChyY3VfcmVhZF9sb2NrKXsuLi4ufSwgYXQ6CnJj
dV9sb2NrX2FjcXVpcmUrMHg4LzB4MzgKWyA3OTExLjE5NjY1NV1bIFQxMzA5XSA0IGxvY2tzIGhl
bGQgYnkgaHVnZW1tYXAwNS81MTAzNToKWyA3OTExLjIwMTczMV1bIFQxMzA5XSA0IGxvY2tzIGhl
bGQgYnkgaHVnZW1tYXAwNS81MTAzODoKWyA3OTExLjIwNjgxNF1bIFQxMzA5XcKgClsgNzkxMS4y
MDkwMjVdWyBUMTMwOV0gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09ClsgNzkxMS4yMDkwMjVdWyBUMTMwOV3CoAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
