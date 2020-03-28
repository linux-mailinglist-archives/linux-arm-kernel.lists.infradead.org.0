Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0AC1965FD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 13:06:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Subject:To:From:Message-ID:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=6DfeFOYHvcHk4JXd1hBtIfqL3FcJUYUdvS/3ugnXLiU=; b=pM2MaWu1z6Qevvp1m2B/d2QcC
	A/FwauPj20hGL2Dsv2GA6Hw5RFP/KDaruAmWOaTW0c4RjSFEkYSF9RBp+j7RFsRAomMzoD/tTxAsC
	Gi5CafTMGPVnFzkkH/Vx7n3c7hsY+Xqfnvp/hRRcIyp1N5BOtcJItXizEAlWQQdUwNKUgm1xdD4y/
	xYrY9dGibnAoGHs+LADD6M7spXamarFZqaKl9NvUm3nAkEfU2yDc0lhOduSaVrrFCPcRCMVOpf/zP
	oo/kCQRk/nO54cnBy84wi1GddACalhNKef1ffTAhE9Cd8XNgzWr9crR+eeFuenf8fT325SP/UHxpj
	jSB589BkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIAEh-0002gr-MZ; Sat, 28 Mar 2020 12:06:47 +0000
Received: from mx.0dd.nl ([2a04:52c0:101:921::25])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIAEV-0002g8-UR; Sat, 28 Mar 2020 12:06:37 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id D991D5FA80;
 Sat, 28 Mar 2020 13:06:32 +0100 (CET)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="d5KhzrfD"; 
 dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id 8898B26BF2F;
 Sat, 28 Mar 2020 13:06:32 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 8898B26BF2F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1585397192;
 bh=SkFKJkY8E//tW+Dis4BsAeTtpnp5rok+icUiekyoMqY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=d5KhzrfDV2pYn4v8aUb10YcAM5RgQx4nRdo3rJTCOeAHtq8+6pxf3L4f3HVGG+axo
 87VMnC2QH6MLM8mWm1brykFfcIHKmoCbVhvhZZ4uLXX2q2L0B21VUotG56b6W5tQOm
 snd531SrzZjkzmZtFscmkYbSRTP4tGlJxp4E64sbbAm1mrWJuhQ8ogHP84WvLu+ljr
 dNApJyDYX2qHBUW5acnQkuWfQ6AJohK5YTDs+kPno9UYpbTZrcO9uNMGdFcxgY6HhO
 SmRoSc1JJhadIm+XFXwqHYJEm50RdF1GPRWrdgtueOKGdXRNt8iO5MB7EDqOS67foq
 w65Q3uLdPs25A==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Sat, 28 Mar 2020 12:06:32 +0000
Date: Sat, 28 Mar 2020 12:06:32 +0000
Message-ID: <20200328120632.Horde.u68iv-GbxRgnXZTYfkNn0hr@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Subject: Re: [PATCH] MIPS: ralink: mt7621: Fix soc_device introduction
In-Reply-To: <20200328102715.8309-1-tsbogend@alpha.franken.de>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_050636_255910_259EA618 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
 Sergio Paracuellos <sergio.paracuellos@gmail.com>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="Yes"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVGhvbWFzLAoKVGhhbmtzIGZvciBmaXhpbmcgdGhlIGNvbXBpbGUgaXNzdWUgZm9yIG1lLgpO
b3cgSSBjYW4gbWFrZSBhIGtlcm5lbCBhZ2Fpbi4KClRlc3RlZC1ieTogUmVuw6kgdmFuIERvcnN0
IDxvcGVuc291cmNlQHZkb3JzdC5jb20+CgpHcmVhdHMsCgpSZW7DqQoKUXVvdGluZyBUaG9tYXMg
Qm9nZW5kb2VyZmVyIDx0c2JvZ2VuZEBhbHBoYS5mcmFua2VuLmRlPjoKCj4gRGVwZW5kaW5nIG9u
IHNlbGVjdGVkIFNNUCBjb25maWcgb3B0aW9ucyBzb2NfZGV2aWNlIGRpZG4ndCBnZXQKPiBpbml0
aWFsaXNlZCBhdCBhbGwuIFdpdGggVVAgY29uZmlnIHZtbGludXggZGlkbid0IGxpbmsgYmVjYXVz
ZQo+IG9mIG1pc3Npbmcgc29jIGJ1cy4KPgo+IEZpeGVzOiA3MWI5YjVlMDEzMGQgKCJNSVBTOiBy
YWxpbms6IG10NzYyMTogaW50cm9kdWNlICdzb2NfZGV2aWNlJyAgCj4gaW5pdGlhbGl6YXRpb24i
KQo+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBCb2dlbmRvZXJmZXIgPHRzYm9nZW5kQGFscGhhLmZy
YW5rZW4uZGU+Cj4gLS0tCj4gIGFyY2gvbWlwcy9yYWxpbmsvS2NvbmZpZyAgfCAxICsKPiAgYXJj
aC9taXBzL3JhbGluay9tdDc2MjEuYyB8IDQgKystLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9hcmNoL21pcHMvcmFs
aW5rL0tjb25maWcgYi9hcmNoL21pcHMvcmFsaW5rL0tjb25maWcKPiBpbmRleCA5NGU5Y2U5OTQ0
OTQuLjM1YzJlYmQ4ZjA5NCAxMDA2NDQKPiAtLS0gYS9hcmNoL21pcHMvcmFsaW5rL0tjb25maWcK
PiArKysgYi9hcmNoL21pcHMvcmFsaW5rL0tjb25maWcKPiBAQCAtNTIsNiArNTIsNyBAQCBjaG9p
Y2UKPiAgCQlzZWxlY3QgQ09NTU9OX0NMSwo+ICAJCXNlbGVjdCBDTEtTUkNfTUlQU19HSUMKPiAg
CQlzZWxlY3QgSEFWRV9QQ0kgaWYgUENJX01UNzYyMQo+ICsJCXNlbGVjdCBTT0NfQlVTCj4gIGVu
ZGNob2ljZQo+Cj4gIGNob2ljZQo+IGRpZmYgLS1naXQgYS9hcmNoL21pcHMvcmFsaW5rL210NzYy
MS5jIGIvYXJjaC9taXBzL3JhbGluay9tdDc2MjEuYwo+IGluZGV4IDkwNTQ2MGFlZWIxZi4uMGFj
Y2I4MGRiNzA5IDEwMDY0NAo+IC0tLSBhL2FyY2gvbWlwcy9yYWxpbmsvbXQ3NjIxLmMKPiArKysg
Yi9hcmNoL21pcHMvcmFsaW5rL210NzYyMS5jCj4gQEAgLTI0MywxMiArMjQzLDEyIEBAIHZvaWQg
cHJvbV9zb2NfaW5pdChzdHJ1Y3QgcmFsaW5rX3NvY19pbmZvICpzb2NfaW5mbykKPgo+ICAJcnQy
ODgwX3Bpbm11eF9kYXRhID0gbXQ3NjIxX3Bpbm11eF9kYXRhOwo+Cj4gKwlzb2NfZGV2X2luaXQo
c29jX2luZm8sIHJldik7Cj4gKwo+ICAJaWYgKCFyZWdpc3Rlcl9jcHNfc21wX29wcygpKQo+ICAJ
CXJldHVybjsKPiAgCWlmICghcmVnaXN0ZXJfY21wX3NtcF9vcHMoKSkKPiAgCQlyZXR1cm47Cj4g
IAlpZiAoIXJlZ2lzdGVyX3ZzbXBfc21wX29wcygpKQo+ICAJCXJldHVybjsKPiAtCj4gLQlzb2Nf
ZGV2X2luaXQoc29jX2luZm8sIHJldik7Cj4gIH0KPiAtLQo+IDIuMTYuNAoKCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
