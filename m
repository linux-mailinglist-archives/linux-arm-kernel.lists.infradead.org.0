Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C88DEC05A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 10:13:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L8tEa3XfSjISyU+GcRC6TbH7U/bE1bwc1YoXu9No7UQ=; b=b+4WMZnD+vGQFE
	I217wJHaCfCG25q6dYXH3VQsby/yrkbTArtC3rlbPXHp1FopHiwrSPsKMVlGTngcKp1/wpJ3dVYJI
	ErynvRrMaZsbDeaovThuzs/nfCeJ+0c1it/8fixbjZ95EnB+58gyiecKxW1NKU5f94g5ljrk3p5JX
	32lpqQx7aRnp7AYiTcNAHTMLptz2BeObFyZ8k7nre5ma2iUS5VXSM8sJeZpUXDWOKBfmV18aR9f2p
	zxRZFUHODB+SouMbSv9HL0BD6dZG8nY5Jx52ff21tEbsAo/JUD9V/zKz79ddahqVOQDLU3eTZ9sG1
	gtNLcKOpf4UHTzpTBSEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQSzf-0003nI-1R; Fri, 01 Nov 2019 09:13:19 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQSzW-0003lY-Qb; Fri, 01 Nov 2019 09:13:13 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 8EBD962EBCBC;
 Fri,  1 Nov 2019 10:13:00 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id PQahXYOT46px; Fri,  1 Nov 2019 10:12:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 2AE38608313B;
 Fri,  1 Nov 2019 10:12:56 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id c14mF2Z6Kv1A; Fri,  1 Nov 2019 10:12:55 +0100 (CET)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id C825D6083139;
 Fri,  1 Nov 2019 10:12:55 +0100 (CET)
Date: Fri, 1 Nov 2019 10:12:55 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: Mike Rapoport <rppt@kernel.org>
Message-ID: <1156525130.69849.1572599575743.JavaMail.zimbra@nod.at>
In-Reply-To: <1572597584-6390-12-git-send-email-rppt@kernel.org>
References: <1572597584-6390-1-git-send-email-rppt@kernel.org>
 <1572597584-6390-12-git-send-email-rppt@kernel.org>
Subject: Re: [PATCH v2 11/13] um: remove unused pxx_offset_proc() and
 addr_pte() functions
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: remove unused pxx_offset_proc() and addr_pte() functions
Thread-Index: uAt1m92PQC0j1btKcTDhR35rev+lrQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_021311_155235_75013FC7 
X-CRM114-Status: UNSURE (   4.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 linux-mm@kvack.org, sparclinux@vger.kernel.org,
 Rolf Eike Beer <eike-kernel@sf-tec.de>, Vincent Chen <deanbo422@gmail.com>,
 Greg Ungerer <gerg@linux-m68k.org>,
 anton ivanov <anton.ivanov@cambridgegreys.com>,
 linux-arch <linux-arch@vger.kernel.org>, linux-c6x-dev@linux-c6x.org,
 Helge Deller <deller@gmx.de>, Russell King <linux@armlinux.org.uk>,
 Mike Rapoport <rppt@linux.ibm.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Mark Salter <msalter@redhat.com>, Matt Turner <mattst88@gmail.com>,
 Jeff Dike <jdike@addtoit.com>, Sam Creasey <sammy@sammy.net>,
 Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-um <linux-um@lists.infradead.org>, linux-m68k@lists.linux-m68k.org,
 Greentime Hu <green.hu@gmail.com>, "Kirill A. Shutemov" <kirill@shutemov.name>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Michal Simek <monstr@monstr.eu>, linux-parisc@vger.kernel.org,
 linux-kernel <linux-kernel@vger.kernel.org>, davem <davem@davemloft.net>,
 linux-alpha@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 torvalds <torvalds@linux-foundation.org>, Peter Rosin <peda@axentia.se>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogIk1pa2UgUmFwb3BvcnQiIDxy
cHB0QGtlcm5lbC5vcmc+Cj4gQW46IGxpbnV4LW1tQGt2YWNrLm9yZwo+IENDOiAiQW5kcmV3IE1v
cnRvbiIgPGFrcG1AbGludXgtZm91bmRhdGlvbi5vcmc+LCAiYW50b24gaXZhbm92IiA8YW50b24u
aXZhbm92QGNhbWJyaWRnZWdyZXlzLmNvbT4sICJBcm5kIEJlcmdtYW5uIgo+IDxhcm5kQGFybmRi
LmRlPiwgImRhdmVtIiA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD4sICJHZWVydCBVeXR0ZXJob2V2ZW4i
IDxnZWVydEBsaW51eC1tNjhrLm9yZz4sICJHcmVlbnRpbWUgSHUiCj4gPGdyZWVuLmh1QGdtYWls
LmNvbT4sICJHcmVnIFVuZ2VyZXIiIDxnZXJnQGxpbnV4LW02OGsub3JnPiwgIkhlbGdlIERlbGxl
ciIgPGRlbGxlckBnbXguZGU+LCAiSmFtZXMgRS5KLiBCb3R0b21sZXkiCj4gPEphbWVzLkJvdHRv
bWxleUBIYW5zZW5QYXJ0bmVyc2hpcC5jb20+LCAiSmVmZiBEaWtlIiA8amRpa2VAYWRkdG9pdC5j
b20+LCAiS2lyaWxsIEEuIFNodXRlbW92IiA8a2lyaWxsQHNodXRlbW92Lm5hbWU+LAo+ICJ0b3J2
YWxkcyIgPHRvcnZhbGRzQGxpbnV4LWZvdW5kYXRpb24ub3JnPiwgIk1hcmsgU2FsdGVyIiA8bXNh
bHRlckByZWRoYXQuY29tPiwgIk1hdHQgVHVybmVyIiA8bWF0dHN0ODhAZ21haWwuY29tPiwKPiAi
TWljaGFsIFNpbWVrIiA8bW9uc3RyQG1vbnN0ci5ldT4sICJQZXRlciBSb3NpbiIgPHBlZGFAYXhl
bnRpYS5zZT4sICJyaWNoYXJkIiA8cmljaGFyZEBub2QuYXQ+LCAiUm9sZiBFaWtlIEJlZXIiCj4g
PGVpa2Uta2VybmVsQHNmLXRlYy5kZT4sICJSdXNzZWxsIEtpbmciIDxsaW51eEBhcm1saW51eC5v
cmcudWs+LCAiU2FtIENyZWFzZXkiIDxzYW1teUBzYW1teS5uZXQ+LCAiVmluY2VudCBDaGVuIgo+
IDxkZWFuYm80MjJAZ21haWwuY29tPiwgIlZpbmVldCBHdXB0YSIgPFZpbmVldC5HdXB0YTFAc3lu
b3BzeXMuY29tPiwgIk1pa2UgUmFwb3BvcnQiIDxycHB0QGtlcm5lbC5vcmc+LAo+IGxpbnV4LWFs
cGhhQHZnZXIua2VybmVsLm9yZywgImxpbnV4LWFyY2giIDxsaW51eC1hcmNoQHZnZXIua2VybmVs
Lm9yZz4sICJsaW51eC1hcm0ta2VybmVsIgo+IDxsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmc+LCBsaW51eC1jNngtZGV2QGxpbnV4LWM2eC5vcmcsICJsaW51eC1rZXJuZWwiIDxs
aW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnPiwKPiBsaW51eC1tNjhrQGxpc3RzLmxpbnV4LW02
OGsub3JnLCBsaW51eC1wYXJpc2NAdmdlci5rZXJuZWwub3JnLCAibGludXgtdW0iIDxsaW51eC11
bUBsaXN0cy5pbmZyYWRlYWQub3JnPiwKPiBzcGFyY2xpbnV4QHZnZXIua2VybmVsLm9yZywgIk1p
a2UgUmFwb3BvcnQiIDxycHB0QGxpbnV4LmlibS5jb20+Cj4gR2VzZW5kZXQ6IEZyZWl0YWcsIDEu
IE5vdmVtYmVyIDIwMTkgMDk6Mzk6NDIKPiBCZXRyZWZmOiBbUEFUQ0ggdjIgMTEvMTNdIHVtOiBy
ZW1vdmUgdW51c2VkIHB4eF9vZmZzZXRfcHJvYygpIGFuZCBhZGRyX3B0ZSgpIGZ1bmN0aW9ucwoK
PiBGcm9tOiBNaWtlIFJhcG9wb3J0IDxycHB0QGxpbnV4LmlibS5jb20+Cj4gCj4gVGhlIHB4eF9v
ZmZzZXRfcHJvYygpIGFuZCBhZGRyX3B0ZSgpIGZ1bmN0aW9ucyBhcmUgbmV2ZXIgdXNlZC4KPiBS
ZW1vdmUgdGhlbS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNaWtlIFJhcG9wb3J0IDxycHB0QGxpbnV4
LmlibS5jb20+CgpBY2tlZC1ieTogUmljaGFyZCBXZWluYmVyZ2VyIDxyaWNoYXJkQG5vZC5hdD4K
ClRoYW5rcywKLy9yaWNoYXJkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
