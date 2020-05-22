Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3FA51DE718
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 14:41:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eyd9yA+qg0o/+vFv2Ypylc0LfUQ/QwIPR0LuIPkzmkQ=; b=TbwY4fLoFGzTa9
	Yx8D0tL6UFBWZ0lEOscFnUtzp8s3ti+qkYbjp3+/Wj9IE/DHivHB60J4qMQmoy6ZxIeFQ3zGci3bQ
	VYbfzxBuI4KuGvz4arbTuMT09MTaiRiM1mMstC6W11tS7/asUnnKdDUCRB7u29I7myIVGqcDA113q
	RrfhAGkcgjYi/57np9ZQXwjgYe0fBDt6Q7b653dy9E3h4LhwynotJVKyOBnTXXsNN2tnjdL6GFqDJ
	q4XyJ77aGFrQhI4R1RETZzFdtXeTJQX4QXigf33ez/ehz+mzdQXRJZ4Qbv00hkvKZwvpKpzmB/mut
	khkcZdfPQ54FrIvkPVnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc6z4-0007JT-KI; Fri, 22 May 2020 12:41:06 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc6ys-0007IA-UK
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 12:40:56 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1590151254; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=oh+42u1jD0lF3Mak7Y5plxChvFaOqSnyizeGieH43rM=;
 b=fopXAkzpZvaPl1tTp3tpfrkK5r0ZmOgIENudMy+R3zT/mzYGCiUUj/LYVBx7bxFiZ5LSAkdF
 Kf1ebUx5PAi5PC5SsyK5ExKRSGm7ZDKfTuaPbZNHleDo1mYsCqvJrTs4gZo3ejFh6PkWYFxI
 ThpXHVfXmRKfPen93qLJKkyK41U=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n01.prod.us-east-1.postgun.com with SMTP id
 5ec7c8558075f6e58c91eda8 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 22 May 2020 12:40:53
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 9E1B0C433CA; Fri, 22 May 2020 12:40:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C56E6C433C6;
 Fri, 22 May 2020 12:40:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C56E6C433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH -next] mt76: mt7915: Fix build error
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20200522034533.61716-1-yuehaibing@huawei.com>
References: <20200522034533.61716-1-yuehaibing@huawei.com>
To: YueHaibing <yuehaibing@huawei.com>
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-Id: <20200522124052.9E1B0C433CA@smtp.codeaurora.org>
Date: Fri, 22 May 2020 12:40:52 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_054055_041345_51643609 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.27 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: ryder.lee@mediatek.com, YueHaibing <yuehaibing@huawei.com>,
 linux-wireless@vger.kernel.org, yf.luo@mediatek.com,
 chih-min.chen@mediatek.com, linux-kernel@vger.kernel.org,
 matthias.bgg@gmail.com, yiwei.chung@mediatek.com,
 linux-mediatek@lists.infradead.org, netdev@vger.kernel.org,
 lorenzo.bianconi83@gmail.com, kuba@kernel.org, shayne.chen@mediatek.com,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org, nbd@nbd.name
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

WXVlSGFpYmluZyA8eXVlaGFpYmluZ0BodWF3ZWkuY29tPiB3cm90ZToKCj4gSW4gZmlsZSBpbmNs
dWRlZCBmcm9tIC4vaW5jbHVkZS9saW51eC9maXJtd2FyZS5oOjY6MCwKPiAgICAgICAgICAgICAg
ICAgIGZyb20gZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc5MTUvbWN1LmM6
NDoKPiBJbiBmdW5jdGlvbiDigJhfX210NzkxNV9tY3VfbXNnX3NlbmTigJksCj4gICAgIGlubGlu
ZWQgZnJvbSDigJhtdDc5MTVfbWN1X3NlbmRfbWVzc2FnZeKAmSBhdCBkcml2ZXJzL25ldC93aXJl
bGVzcy9tZWRpYXRlay9tdDc2L210NzkxNS9tY3UuYzozNzA6NjoKPiAuL2luY2x1ZGUvbGludXgv
Y29tcGlsZXIuaDozOTY6Mzg6IGVycm9yOiBjYWxsIHRvIOKAmF9fY29tcGlsZXRpbWVfYXNzZXJ0
XzU0NeKAmSBkZWNsYXJlZCB3aXRoIGF0dHJpYnV0ZSBlcnJvcjogQlVJTERfQlVHX09OIGZhaWxl
ZDogY21kID09IE1DVV9FWFRfQ01EX0VGVVNFX0FDQ0VTUyAmJiBtY3VfdHhkLT5zZXRfcXVlcnkg
IT0gTUNVX1FfUVVFUlkKPiAgIF9jb21waWxldGltZV9hc3NlcnQoY29uZGl0aW9uLCBtc2csIF9f
Y29tcGlsZXRpbWVfYXNzZXJ0XywgX19DT1VOVEVSX18pCj4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBeCj4gLi9pbmNsdWRlL2xpbnV4L2NvbXBpbGVyLmg6Mzc3OjQ6IG5v
dGU6IGluIGRlZmluaXRpb24gb2YgbWFjcm8g4oCYX19jb21waWxldGltZV9hc3NlcnTigJkKPiAg
ICAgcHJlZml4ICMjIHN1ZmZpeCgpOyAgICBcCj4gICAgIF5+fn5+fgo+IC4vaW5jbHVkZS9saW51
eC9jb21waWxlci5oOjM5NjoyOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYX2NvbXBp
bGV0aW1lX2Fzc2VydOKAmQo+ICAgX2NvbXBpbGV0aW1lX2Fzc2VydChjb25kaXRpb24sIG1zZywg
X19jb21waWxldGltZV9hc3NlcnRfLCBfX0NPVU5URVJfXykKPiAgIF5+fn5+fn5+fn5+fn5+fn5+
fn4KPiAuL2luY2x1ZGUvbGludXgvYnVpbGRfYnVnLmg6Mzk6Mzc6IG5vdGU6IGluIGV4cGFuc2lv
biBvZiBtYWNybyDigJhjb21waWxldGltZV9hc3NlcnTigJkKPiAgI2RlZmluZSBCVUlMRF9CVUdf
T05fTVNHKGNvbmQsIG1zZykgY29tcGlsZXRpbWVfYXNzZXJ0KCEoY29uZCksIG1zZykKPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+Cj4gLi9p
bmNsdWRlL2xpbnV4L2J1aWxkX2J1Zy5oOjUwOjI6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNy
byDigJhCVUlMRF9CVUdfT05fTVNH4oCZCj4gICBCVUlMRF9CVUdfT05fTVNHKGNvbmRpdGlvbiwg
IkJVSUxEX0JVR19PTiBmYWlsZWQ6ICIgI2NvbmRpdGlvbikKPiAgIF5+fn5+fn5+fn5+fn5+fn4K
PiBkcml2ZXJzL25ldC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L210NzkxNS9tY3UuYzoyODA6Mjog
bm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvIOKAmEJVSUxEX0JVR19PTuKAmQo+ICAgQlVJTERf
QlVHX09OKGNtZCA9PSBNQ1VfRVhUX0NNRF9FRlVTRV9BQ0NFU1MgJiYKPiAgIF5+fn5+fn5+fn5+
fgo+IAo+IEJVSUxEX0JVR19PTiBpcyBtZWFuaW5nbGVzcyBoZXJlLCBjaGFuZyBpdCB0byBXQVJO
X09OLgo+IAo+IEZpeGVzOiBlNTdiNzkwMTQ2OWYgKCJtdDc2OiBhZGQgbWFjODAyMTEgZHJpdmVy
IGZvciBNVDc5MTUgUENJZS1iYXNlZCBjaGlwc2V0cyIpCj4gU2lnbmVkLW9mZi1ieTogWXVlSGFp
YmluZyA8eXVlaGFpYmluZ0BodWF3ZWkuY29tPgoKUGF0Y2ggYXBwbGllZCB0byB3aXJlbGVzcy1k
cml2ZXJzLW5leHQuZ2l0LCB0aGFua3MuCgo0NzJmMGEyNDAyNTAgbXQ3NjogbXQ3OTE1OiBGaXgg
YnVpbGQgZXJyb3IKCi0tIApodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzExNTY0
NTk1LwoKaHR0cHM6Ly93aXJlbGVzcy53aWtpLmtlcm5lbC5vcmcvZW4vZGV2ZWxvcGVycy9kb2N1
bWVudGF0aW9uL3N1Ym1pdHRpbmdwYXRjaGVzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
