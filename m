Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C89D6E9D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 07:28:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vqBDnEKk2HA8/+FAV/fJ6zh0DKgnM3up7QYQ5JhtH+E=; b=Ahtl99M8jo2IQp
	uieZSJYhPMH2GBMlpYE3LzzR+A0YfYDrrSuvfIww77JReUss2ktaFKQ64Uyd9UlgziZTVbvl/ZZES
	FJ+Mx6ai1+cWyYZEmQQb2Oeg4pPA3VdvPTI0v5CwvUxYvvzYXcRkA3ivnwKabIfQ3dxjTyRTdr+Co
	bWgsk51d4esb1RyvPZhhUoOnKzmyh2xBM+MwHKGpDYuMg4JpiPd/r0tei6JWaDzdunxZOOlMK5AuM
	0GIyuSnzg9PeQ8jl2mcKLVweh4jLQcZfhyy0J5wdbmLOq1zfrw6uTbI8cs7PHrdH6LN0RjlX13pmQ
	z4NEJq2ypWhWkgQq/d8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKFNe-0003oJ-Q0; Tue, 15 Oct 2019 05:28:22 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKFNO-0003lc-TH; Tue, 15 Oct 2019 05:28:08 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id B44C960610; Tue, 15 Oct 2019 05:28:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571117284;
 bh=8FGb2J/wiGU3r55lQEJRsCKstDbZ2Qwho5EqzVqSYf8=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=ZPScUZ097khnhvCjqBo3DN6ry6G/nvTioZK2/Sb9Qt3uKF5GwuUARlqkxQoH8g2uV
 lAHfAV9TvQCGA97sZmRdIhGTLjuGBIl/LDXk4vRe8vyE+DXRJycjrHgISE054COpDL
 To1f1VWHsnXvyB2eqz3jjRkDtIVWsMgsu7nR7ICI=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID,SPF_NONE autolearn=no
 autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id BD25E60610;
 Tue, 15 Oct 2019 05:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571117283;
 bh=8FGb2J/wiGU3r55lQEJRsCKstDbZ2Qwho5EqzVqSYf8=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=VuLGlA8lk9NyjZcl8MpkH9/FQvmn9bmr9SU1UhdN/yFzeLu4OBTAyX7nXo9qB8+Y0
 17PxNEnrlPmE62lGxKz2TQB0gDq8+ioS2p81qCejvHX+tWMxAiSBP5ZddMUUTutCaI
 RXiTXq/az4elXX5fFhUe6TrTRvkz/b9OkPmdvU/g=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org BD25E60610
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: =?utf-8?q?=5BPATCH=5D_net/wireless=3A_Delete_unnecessary_checks_bef?==?utf-8?q?ore_the_macro_call_=E2=80=9Cdev=5Fkfree=5Fskb=E2=80=9D?=
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <ea6c6fef-9868-196b-d914-23faf12d7f5c@web.de>
References: <ea6c6fef-9868-196b-d914-23faf12d7f5c@web.de>
To: Markus Elfring <Markus.Elfring@web.de>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20191015052804.B44C960610@smtp.codeaurora.org>
Date: Tue, 15 Oct 2019 05:28:04 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_222806_971147_FA265E68 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, Stanislaw Gruszka <sgruszka@redhat.com>,
 kernel-janitors@vger.kernel.org, linux-wireless@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, ath10k@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Solomon Peachy <pizza@shaftnet.org>, Roy Luo <royluo@google.com>,
 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TWFya3VzIEVsZnJpbmcgPE1hcmt1cy5FbGZyaW5nQHdlYi5kZT4gd3JvdGU6Cgo+IEZyb206IE1h
cmt1cyBFbGZyaW5nIDxlbGZyaW5nQHVzZXJzLnNvdXJjZWZvcmdlLm5ldD4KPiBEYXRlOiBUaHUs
IDIyIEF1ZyAyMDE5IDEwOjIwOjEwICswMjAwCj4gCj4gVGhlIGRldl9rZnJlZV9za2IoKSBmdW5j
dGlvbiBwZXJmb3JtcyBhbHNvIGlucHV0IHBhcmFtZXRlciB2YWxpZGF0aW9uLgo+IFRodXMgdGhl
IHRlc3QgYXJvdW5kIHRoZSBzaG93biBjYWxscyBpcyBub3QgbmVlZGVkLgo+IAo+IFRoaXMgaXNz
dWUgd2FzIGRldGVjdGVkIGJ5IHVzaW5nIHRoZSBDb2NjaW5lbGxlIHNvZnR3YXJlLgo+IAo+IFNp
Z25lZC1vZmYtYnk6IE1hcmt1cyBFbGZyaW5nIDxlbGZyaW5nQHVzZXJzLnNvdXJjZWZvcmdlLm5l
dD4KClBhdGNoIGFwcGxpZWQgdG8gd2lyZWxlc3MtZHJpdmVycy1uZXh0LmdpdCwgdGhhbmtzLgoK
ODY4YWQyMTQ5NjAyIG5ldC93aXJlbGVzczogRGVsZXRlIHVubmVjZXNzYXJ5IGNoZWNrcyBiZWZv
cmUgdGhlIG1hY3JvIGNhbGwg4oCcZGV2X2tmcmVlX3NrYuKAnQoKLS0gCmh0dHBzOi8vcGF0Y2h3
b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTExMDg3NDEvCgpodHRwczovL3dpcmVsZXNzLndpa2kua2Vy
bmVsLm9yZy9lbi9kZXZlbG9wZXJzL2RvY3VtZW50YXRpb24vc3VibWl0dGluZ3BhdGNoZXMKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
