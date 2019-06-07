Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC0D385E7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 10:06:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sxYaylUscoJ89NVvNuBW4OMttcT+3pmctWXgUIMoCOw=; b=B23yu0mQ13Xzeo
	zKW5y34czCN8dbOkbYFtlfXSIXqdwl8Sxc/TCRtzrKFzUD2GeC9+LH2eExhWUfynN0PGp/2a+vIBT
	qj89M1aqXPZjf+ux5N4MfmPvA3408ESWUxmJ2XJK9NhTx0n8xTnMZHpnhaR5ZXHVyaSBXUyXoOMsD
	WknP0ch/AEzdu/f3Br+xytCXWW1zq2/TGXztqQJfrXQ1L5W4MQaJCG8Mkl/Wur0w4EO8f77KpzqcE
	3eCAX/lRrQX8cr/8/Rv6EAlDvHa4wmlzy5f1hdfj17Gt1NyY5OC/ywfoIRV842aZDbKArC4kLx55C
	Aite2IqOmfzFSuf+7O1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ9tI-0000ix-8Z; Fri, 07 Jun 2019 08:06:24 +0000
Received: from mail.velocard.eu ([80.211.74.207])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ9t6-0000ia-00
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 08:06:13 +0000
Received: by mail.velocard.eu (Postfix, from userid 1001)
 id 909B28761E; Fri,  7 Jun 2019 10:05:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=velocard.eu; s=mail;
 t=1559894762; bh=28mexHLKqDk2ixxtw16xz45K8l/dWN7qZL8I5V4XNxg=;
 h=Date:From:To:Subject:From;
 b=XBmS+sHmuoOmT84tj7/8dts+ET3JpeF7MAAZkpKOYPTg5+C8hUL1iNZr9aXXFfudN
 s55FhnjL0utwv/V5zL49vYNmcXDGzPs0ChSemm+mOj0L23yOqwg6zWMK7wSWdg5ptH
 Cnx08ZCa+HNbNNYoBbgHqTpihg+QSclt9Ok4d/DI=
Received: by mail.velocard.eu for <linux-arm-kernel@lists.infradead.org>;
 Fri,  7 Jun 2019 08:05:49 GMT
Message-ID: <20190607084500-0.1.j.1ch2.0.1x0297aqf5@velocard.eu>
Date: Fri,  7 Jun 2019 08:05:49 GMT
From: =?UTF-8?Q?"Kapolcs_M=C3=A1ty=C3=A1s"?= <kapolcs.matyas@velocard.eu>
To: <linux-arm-kernel@lists.infradead.org>
Subject: =?UTF-8?Q?B=C3=A9ren_fel=C3=BCli_juttat=C3=A1sok?=
X-Mailer: mail.velocard.eu
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_010612_203956_CEE4F44C 
X-CRM114-Status: UNSURE (   1.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

S2VkdmVzIEjDtmxneWVtL1VyYW0hCgoyMDE5IGphbnXDoXJqw6F0w7NsIHN6aW50ZSBtaW5kZW4g
YsOpcmVuIGvDrXbDvGxpIGp1dHRhdMOhcyBqw7Z2ZWRlbGVta8OpbnQgZm9nIGFkw7N6bmkgKGtp
dsOpdGVsdCBrw6lwZXogZXogYWzDs2wgYSBTWsOJUCBrw6FydHlhKS4gQSB2w6FsdG96w6Fzb2sg
ZWxsZW7DqXJlIGEgdsOhbGxhbGF0b2sgdMO2YmIgbWludCA1NSUtYSBtZWcga8OtdsOhbmphIHRh
cnRhbmkgYSBkb2xnb3rDs2kganV0dGF0w6Fzb2sgbmV0dMOzIMO2c3N6ZWfDqXQsIG1hZ8OhcmEg
dsOhbGxhbHZhIGV6emVsIGEgbWVnZW1lbGtlZGV0dCBhZMOzdGVyaGVrZXQuIAoKSnV0dGF0w6Fz
aSBrw6FydHnDoWluayBzZWfDrXRzw6lnw6l2ZWwgMjAxOS1iZW4gYSBtdW5rw6FsdGF0w7NrIGxl
ZmVkaGV0aWsgc3ppbnRlIGF6IMO2c3N6ZXMgamVsZW5sZWcgaGFzem7DoWx0IGLDqXJlbiBrw612
w7xsaSBqdXR0YXTDoXN0LCBtaWvDtnpiZW4gbXVua2F2w6FsbGFsw7NpayDDqWx2ZXpoZXRpayBh
eiBha8OhciBrb3Jsw6F0bGFuIGZlbGhhc3puw6Fsw6FzIGxlaGV0xZFzw6lnw6l0LiAgQSBTWsOJ
UCBrw6FydHnDoXTDs2wgZWx0w6lyxZFlbiBhIG1pIGvDoXJ0ecOhaW5ra2FsIG9seWFuIG1pbmRl
bm5hcG9zIGvDtmx0c8OpZ2VrIGZlZGV6aGV0xZFlayBtaW50IHDDqWxkw6F1bCDDqWxlbG1pc3pl
ciB2w6Fzw6FybMOhcywgZWfDqXN6c8OpZ8O8Z3lpIGVsbMOhdMOhcywgcnVow6F6YXQsIGVsZWt0
cm9uaWthLCDDvHplbWFueWFna8O2bHRzw6lnLCBrw7Z6bcWxZMOtaiwgc8WRdCwgYWvDoXIgbcOp
ZyBrw6lzenDDqW56ZmVsdsOpdGVscmUgaXMgYWxrYWxtYXNhay4gCgpFeiBheiBlZ3lldGxlbiBv
bHlhbiBqdXR0YXTDoXNpIGvDoXJ0eWEgYSBtYWd5YXIgcGlhY29uLCBtZWx5ZXQgbWluZGVuIGhh
emFpIFBPUyB0ZXJtaW7DoWwgZWxmb2dhZCwgZXp6ZWwgYml6dG9zw610dmEgYSBrw6FydHlhIHN6
w6lsZXMga8O2csWxIGZlbGhhc3puw6FsaGF0w7Nzw6Fnw6F0LiAKClN6w612ZXNlbiBiZW11dGF0
b20gw5ZubmVrLCBtaWx5ZW4gdG92w6FiYmkgZWzFkW55w7Zra2VsIGrDoXIga8OhcnR5w6Fpbmsg
ZG9sZ296w7NpIGp1dHRhdMOhc2vDqW50IHTDtnJ0w6luxZEgYWxrYWxtYXrDoXNhLCDDqXMgcsOp
c3psZXRlcyB0w6Fqw6lrb3p0YXTDoXN0IGFkb2sgYSBrw6FydHnDoWsgZmVsaGFzem7DoWzDoXNp
IGxlaGV0xZFzw6lnZWlyxZFsIOKAkyBrw6lyZW0gamVsZXp6ZSBleiBpcsOhbnRpIGlnw6luecOp
dC4gCgoKS2Fwb2xjcyBNw6F0ecOhcwpIdW5nYXJ5IFRlYW0gTGVhZGVyICAKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
