Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB147A3570
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 13:10:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S/dZcez/rrx2MkCIrDgxIFdRyKnAyffYBQkVyKe+bNo=; b=ODZI89RxeE8lJ4
	oPUBNbt2NzeBCxstme4GOm/XsFrAwO9hqs+yK6Ed8NMdGiO4e02bYSvLFqfLO+1jmi2hW62wNhZyU
	5YQ/HHSs6h6cXbbbyxrlVMcYMu86891LRDuvoFs4SfI0Jn5AcAAobAVdLD8kTG9ymxmczgc3RCcXQ
	Kq4Gx87MqUVgeWfybOTOeBZbLpTVOfmMK/VmhCU4gEZxyxPH8mt4jm2LhHii3pI76C/0fvGGBSNNO
	Ny2sYxtPSswy3CVjcp0TIlWD0BW3h2ZbTobm+dHqVsAckMfOWTPpH50vFGFbhLdspPDcJ2q6p6Jha
	+RQYuQfQ7INHMZWBRrEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3enK-0002VN-QU; Fri, 30 Aug 2019 11:10:18 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3enF-0002V4-68
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 11:10:14 +0000
Received: by mail-pg1-x541.google.com with SMTP id e11so3393866pga.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 04:10:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=HkoPYEWHY7gpM48lb9CrSfspbanV7ReB1z1mu6P0S8I=;
 b=Af/Os01sNlt5vM5cT2aW327Ln6g8X11n5GBtCaaTTOX/12VvswEMCzF6WtCXJ3SeuE
 g0kqd/0vzlJkun08W3jqJgT9OuXUs7T03f6t6S6HeZ4qHWz3XKmkXc0SSYhX/4EvJrIR
 u4sAAkm8tF2EocxdwRDApHLAgkXjpNpFZTDw8rjWYY2/yiKDrS9yq1jYXl4YWHn4bmwY
 4HXxgfPeLTk53+L1+1POOfpjy9ZQDIEG4eT5qgH2GTgDUZ8pnBbzSBq5omwz+w/uRQwc
 A4DwyYJkmXKsVMxPpGkPN5HK/oBPkwRKuXx79Qdhru0BTKvNYesV0T1YKNkMQWgFx6+u
 7SkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=HkoPYEWHY7gpM48lb9CrSfspbanV7ReB1z1mu6P0S8I=;
 b=bB9b7yt5d8iKM1xRzxshQzst2+IRaWcMRPVckv+wp0XvEl6ICXUSUYhKxGqabsSOPs
 CjHhH5KE4Oznwlwz3TKD68T4AISJLzOlISckPoVltwjQ/AG1f3rKWrTIR50XQBfs4nRv
 7LLxLoTmlOQ3LuBZd38yQtPgn5rGFEOWs3XbW7/vfFCB5Gh447Ev9YSoM0o9sVpHZSVN
 mR3RE5sJzD/vuEKD/Bx/Cfw2UAqNGmKbX1OeMnvhQsRbRChOdt+H7Z+5rwGrKO0lbhYM
 wf7Emu/88M52+NoMtnsT5rdFyloD0AFsPjGeEvvGioLoLp9uj6PeFrTxgm7T1KiS8QBK
 uxYg==
X-Gm-Message-State: APjAAAWLR3bYolTbm8nW5BJYm6ny223ANHfFI+jKn5aRTUiAWeJaV4sX
 Jh6xEDtBgclnAmCeD+BzTWKDkag9bjCLpNAbkYrCXBkS
X-Google-Smtp-Source: APXvYqwREHMg3lY/0dWy+9AGlM2X3ZPak2fmAJzk8SPTP5VVH4gviu+vJ5ZMCGdvJYw3GWc4PahR2E+ZGe5AMcB5BBw=
X-Received: by 2002:a62:80cb:: with SMTP id
 j194mr17991026pfd.183.1567163409733; 
 Fri, 30 Aug 2019 04:10:09 -0700 (PDT)
MIME-Version: 1.0
References: <CABhetiwRF2Gq3HeG_QNT6t3GtCNJzedeenn6vQC_0FYr5Ee+mA@mail.gmail.com>
 <20190827110234.GB8000@lakrids.cambridge.arm.com>
In-Reply-To: <20190827110234.GB8000@lakrids.cambridge.arm.com>
From: Noam Camus <noamikong@gmail.com>
Date: Fri, 30 Aug 2019 14:09:58 +0300
Message-ID: <CABhetizecdqwS_BGw_UEpqjTGb61Wh0gNSJLXrT5UkBiitpxSw@mail.gmail.com>
Subject: Re: Changing default kernel load address
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_041013_232867_7A99D33D 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (noamikong[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PuKAq9eR16rXkNeo15nXmiDXmdeV150g15LXsywgMjcg15HXkNeV15LXsyAyMDE5INeRLTE0OjAy
INee15DXqiDigKpNYXJrIFJ1dGxhbmTigKzigI8gPOKAqm1hcmsucnV0bGFuZEBhcm0uY29t4oCs
4oCPPjrigKwKPj4KPj4gT24gTW9uLCBBdWcgMjYsIDIwMTkgYXQgMDg6MTI6MjdQTSArMDMwMCwg
Tm9hbSBDYW11cyB3cm90ZToKPj4gPiBIaSwKPj4gPgo+PiA+IEkgd2lzaCB0byBjaGFuZ2UgYW4g
YXJtNjQgbWFjaGluZSBrZXJuZWwgbG9hZCBhZGRyZXNzIGFuZCBJIGhvcGUgdGhpcwo+PiA+IGZv
cnVtIGNhbiBhc3Npc3QuCj4+ID4KPj4gPiBJbiBteSBjdXJyZW50IHNldHVwIHRoZSBLRVJORUxf
U1RBUlQgbWFjcm8gKF90ZXh0KSBlcXVhbHMgMTI4LjVNQjoKPj4gPiBLSU1BR0VfVkFERFI9MTI4
TUIKPj4gPiBURVhUX09GRlNFVD01MTJLQgo+PiA+Cj4+ID4gSSB3aXNoIHRvIGNoYW5nZSBrZXJu
ZWwgbG9hZCBhZGRyZXNzIHRvIHJlc2lkZSBvbiBteSBpbnRlcm5hbCBSQU0KPj4gPiB3aGljaCBs
b2NhdGVzIGJleW9uZCA0R0IuCj4+Cj4+IFlvdSBzaG91bGRuJ3QgbmVlZCB0byBtb2RpZnkgYW55
dGhpbmc7IHRoZSBrZXJuZWwgY2FuIGJlIGxvYWRlZCBhdCBhbnkKPj4gMk1pQi1hbGlnbmVkIHBo
eXNpY2FsIGFkZHJlc3MgKyBURVhUX09GRlNFVC4gS0VSTkVMX1NUQVJUIGFuZAo+PiBLSU1BR0Vf
VkFERFIgYXJlIHZpcnR1YWwgYWRkcmVzc2VzIGFuZCBkb24ndCByZXF1aXJlIGEgc3BlY2lmaWMg
cGh5c2ljYWwKPj4gYWRkcmVzcy4KPj4KPj4gUGxlYXNlIHNlZToKPj4KPj4gICBodHRwczovL3d3
dy5rZXJuZWwub3JnL2RvYy9odG1sL2xhdGVzdC9hcm02NC9ib290aW5nLmh0bWwKCkkgc2VlIHRo
YXQgb25seSB3aGVuIEkgbWF0Y2ggdS1ib290IGxvYWQgYWRkcmVzcyBvZiBrZXJuZWwgd2l0aCB0
aGUKYmVnaW4gb2YgLnRleHQgc2VjdGlvbiBhZGRyZXNzIEkgbWFuYWdlIHRvIGJvb3Qgc3VjY2Vz
c2Z1bGx5LApvdGhlcndpc2UganVzdCBhIGJsYW5rIHNjcmVlbi4KTm90ZSB0aGF0IGtlcm5lbCBp
cyBub3QgY29tcGlsZWQgd2l0aCwgLWZwaWMvLWZQSUMuCkhvdyBjYW4gaXQgYmUgb25lIG1heSBk
b3dubG9hZCBrZXJuZWwgYW55d2hlcmUgd2l0aG91dCBsaW5rZXIgc2NyaXB0CmJlaW5nIGF3YXJl
IG9mIHRoZSBhY3R1YWwgbG9hZCBhZGRyZXNzIG9mIGtlcm5lbD8KClRoYW5rcwpOb2FtCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
