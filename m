Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF25324CA7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 12:28:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u6to3xgg0oTQKRoQ6onOr+QG/1mNdFpodrYuTN5pAS8=; b=AuvFY+/MGwzZtp
	vkqjcN3kOPX3IIE7PpA1eCetQIrJElmhvA51Se0PJUf2V+9jP97vyPIhUeI7BBdiver39XrpvnHtm
	aGZWhSGZCy1FOwaRAx2wh5Y6Xa27ngkpMfdhEg8mmZtZS043cGV5+EkybQ+xApB0QOIQTUySvQw19
	jUC0phYjew0oneNdibmzXl+Hbwqu1a9XYgCvaGO9pEtoa38OuCFCs5QrcxqvTDBmrgoB2EPDqgcXF
	IVI6YiW9pY8L4tVt1dWysoXl3yhAJrqSkSUfWFdmbNtX71AcmvTAFAbkXLt7TLZoh0vpZZnb6u4RH
	92zGi8OwQgwmZMlFi8qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT20E-0005tk-BH; Tue, 21 May 2019 10:28:14 +0000
Received: from mail.creation-24.eu ([212.237.3.109])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT203-0005rw-Vo
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 10:28:08 +0000
Received: by mail.creation-24.eu (Postfix, from userid 1001)
 id 0C93087551; Tue, 21 May 2019 12:18:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=creation-24.eu;
 s=mail; t=1558433939;
 bh=Umvnq0Ds8PmCzwPfDvQpt5kfnQrcDtNcq50cXR3M8IU=;
 h=Date:From:To:Subject:From;
 b=Neh+ozqvLgioEfOTM8YFQu3zrjnt/K3P8hTrNV2JYIHqchY1JNzxzyZ29qAvKbKeF
 ECzob+L1Hi8TOKroSrFe9o5MudqknOAvL+aYLUp49DzCIoIzSX+ElEEhEba7CFKS0A
 9247kylf0IzmT9mHYpLnfOGujmac4ftlWDzGD27s=
Received: by mail.creation-24.eu for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 10:18:02 GMT
Message-ID: <20190521121740-0.1.7.9ku.0.f0pk7ayob2@creation-24.eu>
Date: Tue, 21 May 2019 10:18:02 GMT
From: =?UTF-8?Q?"Kapolcs_M=C3=A1ty=C3=A1s"?= <kapolcs.matyas@creation-24.eu>
To: <linux-arm-kernel@lists.infradead.org>
Subject: =?UTF-8?Q?Dolgoz=C3=B3i_juttat=C3=A1sok?=
X-Mailer: mail.creation-24.eu
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_032804_958660_660239D1 
X-CRM114-Status: UNSURE (   2.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.2 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 2.4 MIXED_ES               Too many es are not es
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

w5xkdsO2emzDtm0sCgoyMDE5IGphbnXDoXJqw6F0w7NsIG1pbmRlbiBuZW0gYsOpciBqZWxsZWfF
sSBqdXR0YXTDoXMgYSBmaXpldMOpc3NlbCBtZWdlZ3llesWRZW4gbGVzeiBtZWdhZMOzenRhdHZh
LiBBIHbDoWx0b3rDoXNvayBlbGxlbsOpcmUgYSB2w6FsbGFsYXRvayB0w7ZiYiBtaW50IDU1JS1h
IG1lZyBrw612w6FuamEgdGFydGFuaSBhIGRvbGdvesOzaSBqdXR0YXTDoXNvayB0w6Ftb2dhdMOh
c2kgbcOpcnTDqWvDqXQuCgpBIGtvcmzDoXRsYW51bCBmZWxoYXN6bsOhbGhhdMOzIGp1dHRhdMOh
cyBrw6FydHlhIHN6w6Ftb3MgZWzFkW5ueWVsIGrDoXIgYSBtdW5rYXbDoWxsYWzDs2sgcsOpc3rD
qXJlLCBhIG11bmvDoWx0YXTDs2sgcGVkaWcgZW5uZWsgc2Vnw610c8OpZ8OpdmVsIHByb2R1a3TD
rXYgw6lzIG1vdGl2w6FsdCBjc2FwYXRvdCB0dWRuYWsgZmVubnRhcnRhbmkuIAoKQSBTWsOJUCBr
w6FydHnDoXTDs2wgZWx0w6lyxZFlbiBhIG1pIGvDoXJ0ecOhbmthdCBhIGZlbGhhc3puw6Fsw7Mg
YXogYWzDoWJiaSBjw6lsb2tyYSBoYXN6bsOhbGhhdGphIGZlbDogw6lsZWxtaXN6ZXIgdsOhc8Oh
cmzDoXMsIGVnw6lzenPDqWfDvGd5aSBlbGzDoXTDoXMsIGVsZWt0cm9uaWthLCBzesOhbGzDoXMs
IG9rdGF0w6FzIMOpcyBlZ3nDqWIgc3pvbGfDoWx0YXTDoXNvaywgc8WRdCwgbcOpZyBrw6lzenDD
qW56ZmVsdsOpdGVscmUgaXMgYWxrYWxtYXMuIAoKRXogYXogZWd5ZXRsZW4gb2x5YW4gYSBrw6Fy
dHlhIGEgcGlhY29uLCBhbWVseWV0IG1pbmRlbiBQT1MgdGVybWluw6FsIGVsZm9nYWQsIGV6emVs
IGJpenRvc8OtdHZhIGEga8OhcnR5YSBzesOpbGVza8O2csWxIGZlbGhhc3puw6Fsw6Fzw6F0LgoK
w5Zyw7ZtbWVsIGJlbXV0YXRvbSBtaWx5ZW4gdG92w6FiYmkgZWzFkW55w7Zra2VsIGrDoXIga8Oh
cnR5w6FpbmsgZG9sZ296w7NpIGp1dHRhdMOhc2vDqW50IHTDtnJ0w6luxZEgYWxrYWxtYXrDoXNh
LCDDqXMgc3rDrXZlc2VuIG1lc8OpbGVrIGEga8OhcnR5w6FrIGZlbGhhc3puw6Fsw6FzaSBsZWhl
dMWRc8OpZ2VpcsWRbCAtIGV6IGlyw6FudGkgaWfDqW55w7xrZXQga8OpcmVtLCBqZWxlenrDqWsu
CiAKQmVtdXRhdGhhdG9tIG1lZ29sZMOhc2FpbmthdCByw6lzemxldGVzZWJiZW4/CgoKS2Fwb2xj
cyBNw6F0ecOhcwpIdW5nYXJ5IFRlYW0gTGVhZGVyICAKCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
