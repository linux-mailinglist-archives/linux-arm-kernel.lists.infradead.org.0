Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8430C7132F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 09:45:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xmUGLSp5F426ctbobJNTwiHl+SLG2ajv2mv0psEq2wU=; b=KE7yMrBR1ONozL
	rGt8woSl7T5zT/o3c4GcTiRrvNxfot9KNBZqvVPdr3ZCYVMm0LkVDs3INKRkg5e/Sk4OCMknTJmd6
	hjjy8WGN28/wziFidM4YDQ1MgG3tug6YUq3O3ezMAsE+ieZjtAGV0rIk8ALsxN0S6lptcT+YbKv/n
	p+kXSGSeU1hTs7MzjJQ1TEkKIKNBiTGhqdga5xuvg5ixbdC7A2XMjN8cFzd9Me8qkCAAoqi1fR/h3
	/USWKjmW0v7EFcMBNCbJRUVJh+blabSeL6m05ntCx+JdQlLS2CvsZNNHZivNg9cQoRyF92YlvuVr5
	4f0l44THXh+uQqFwuV6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hppU1-0002Pf-Nw; Tue, 23 Jul 2019 07:45:13 +0000
Received: from mail.lunchcard.eu ([176.107.133.213] helo=lunchcard.eu)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hppTb-0002Nv-Ah
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 07:44:49 +0000
Received: by lunchcard.eu (Postfix, from userid 1001)
 id 0464D87FE1; Tue, 23 Jul 2019 09:34:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lunchcard.eu; s=mail;
 t=1563867344; bh=Px3inMCiDAVEjQlYwbfy6i6vMp+P5hI6lpZ4ctHC6M0=;
 h=Date:From:To:Subject:From;
 b=INUUJX5/wi0EbvswSgRdGhdg+VsqWSvPO5x9szBPLAoL3nsoVwGzDUMaE83fvfpCR
 vGyhNLKCkdkOre3akv7UOX1uZnfnQkjFzJwEfkZHWANpcpSr+knzpHzjRAXfCt8WEb
 /elHy1QKwg53aFfctB+jPTCJNdZ+BOAJCWFS8N34=
Received: by mail.lunchcard.eu for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 07:34:15 GMT
Message-ID: <20190723084500-0.1.4e.zb1.0.jadif2gqwb@lunchcard.eu>
Date: Tue, 23 Jul 2019 07:34:15 GMT
From: =?UTF-8?Q?"Kapolcs_M=C3=A1ty=C3=A1s"?= <kapolcs.matyas@lunchcard.eu>
To: <linux-arm-kernel@lists.infradead.org>
Subject: =?UTF-8?Q?Dolgoz=C3=B3i_juttat=C3=A1sok?=
X-Mailer: mail.lunchcard.eu
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_004447_537523_AE9F48D1 
X-CRM114-Status: UNSURE (   2.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 2.3 MIXED_ES               Too many es are not es
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

w5xkdsO2emzDtm0hCgoyMDE5LXTFkWwgbWFqZG5lbSBheiDDtnNzemVzIGtpZWfDqXN6w610xZEg
anV0dGF0w6FzIGrDtnZlZGVsZW1rw6ludCBmb2cgYWTDs3puaSAoa2l2w6l2ZSBhIFNaw4lQIGvD
oXJ0ecOhdCkuCgpTemVyZXRuw6ltIGF6IMOWbsO2ayBmaWd5ZWxtw6liZSBhasOhbmxhbmkganV0
dGF0w6FzIGvDoXJ0ecOhaW5rYXQsIG1lbHllayBheiDDumogdGVoZXRzw6lnZWsgbWVnbnllcsOp
c8OpbmVrIMOpcyBhIGRvbGdvesOzayBtZWd0YXJ0w6Fzw6FuYWsgw6lzIG1vdGl2w6Fsw6Fzw6Fu
YWsgdmVyc2VueWvDqXBlcyBlc3prw7Z6ZWkuCgpBIFNaw4lQIGvDoXJ0eWEgbWVnb2xkw6FzYWl0
w7NsIGVsdMOpcsWRZW4gYSBtaSBrw6FydHnDoWlua2F0IGEgbXVua2F2w6FsbGFsw7MgdGV0c3rF
kWxlZ2VzIGPDqWxva3JhIGhhc3puw6FsaGF0amEgZmVsOiDDqWxlbG1pc3plciB2w6Fzw6FybMOh
c3JhLCBlZ8Opc3pzw6lnw7xneWkgZWxsw6F0w6FzcmEsIGVsZWt0cm9uaWvDoXJhLCBzesOhbGzD
oXNyYSwgb2t0YXTDoXNyYSDDqXMgZWd5w6liIGPDqWxva3JhLCB2YWd5IGFrw6FyIGvDqXN6cMOp
bnpmZWx2w6l0ZWxpIGxlaGV0xZFzw6lnZXQgaXMgdsOhbGFzenRoYXQuIAoKU3plcmV0bsOpayBt
ZWdpc21lcm5pIGp1dHRhdMOhcyBrw6FydHnDoWluayBmZWxoYXN6bsOhbMOhc2kgbGVoZXTFkXPD
qWdlaXQgYSBjw6lnw7xrbsOpbD8KClN6w6lwIG5hcG90ISAgCgpLYXBvbGNzIE3DoXR5w6FzCkh1
bmdhcnkgVGVhbSBMZWFkZXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
