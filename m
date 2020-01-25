Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A82F41492E0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 03:00:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ipWUvqpK5MVgCkXSDYc8JEVfeOBYyTgCDNw1OjLEZtY=; b=A1Qc4DZtfWhGXX
	ptlrKdmOFalRrIoIS0R/C6ZIJ59WoEzpalz9FVoUc8y4X9lalJVda5fvu7OefIFNU8Ik7++sNgz1x
	jD6NHHq0wqKC9qBld2UQndYE8y0SQrdZRx059LwHu/KylGb72GoXFptM0yQ/h5+U1YUxfW6pNGoJi
	LYVeM629Qg4T8rLDYUjGXyShq60sjw9/mj/zVFs2xcLYxClJfxuPpTB9jAbQ76oLcCB0jPUBdju1S
	CbBFAEFT+hYhtrA+jUkpWPGggrEa31iSRtpGlbiT8v9hq+dUeLfCK3lKmD86kemDAFMttitUZ/486
	hxTQSKU1pfw09+HdR1TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivAju-0005NB-B0; Sat, 25 Jan 2020 01:59:58 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivAjf-0005MF-Qh
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Jan 2020 01:59:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579917577;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Gg4F4a9mYRh+jpEKdgokjVZOb6/zcBp7qbgMSy5CMmc=;
 b=AEcCXV25r/Hl+wRfmHzQmHTQvk+k9PbNj7IPAwZRizseC+yqLRKhZOylirJ7YGIruceETj
 wiftXAVBiq2RJxpaGoIGT76MkgXCLjA88w8xnYc4gFHZu77/U0Ro63Ypo5i3rHnmJdaZwW
 WWEsnHNBfkwoBo43d+nxTH5eoz4LT2s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-106-8lYgIV_PPT2LGxRzvacRzw-1; Fri, 24 Jan 2020 20:59:33 -0500
X-MC-Unique: 8lYgIV_PPT2LGxRzvacRzw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A726F1882CC2;
 Sat, 25 Jan 2020 01:59:30 +0000 (UTC)
Received: from llong.remote.csb (ovpn-124-92.rdu2.redhat.com [10.10.124.92])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 386EF1001B28;
 Sat, 25 Jan 2020 01:59:28 +0000 (UTC)
Subject: Re: [PATCH v9 0/5] Add NUMA-awareness to qspinlock
To: paulmck@kernel.org, Alex Kogan <alex.kogan@oracle.com>
References: <20200115035920.54451-1-alex.kogan@oracle.com>
 <20200124222434.GA7196@paulmck-ThinkPad-P72>
 <6AAE7FC6-F5DE-4067-8BC4-77F27948CD09@oracle.com>
 <20200125005713.GZ2935@paulmck-ThinkPad-P72>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <02defadb-217d-7803-88a1-ec72a37eda28@redhat.com>
Date: Fri, 24 Jan 2020 20:59:28 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200125005713.GZ2935@paulmck-ThinkPad-P72>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_175943_943785_577EA9C0 
X-CRM114-Status: GOOD (  23.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arch@vger.kernel.org, guohanjun@huawei.com,
 Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 dave.dice@oracle.com, jglauber@marvell.com, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, Ingo Molnar <mingo@redhat.com>, bp@alien8.de,
 hpa@zytor.com, steven.sistare@oracle.com, tglx@linutronix.de,
 daniel.m.jordan@oracle.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMS8yNC8yMCA3OjU3IFBNLCBQYXVsIEUuIE1jS2VubmV5IHdyb3RlOgo+IE9uIEZyaSwgSmFu
IDI0LCAyMDIwIGF0IDA2OjM5OjAyUE0gLTA1MDAsIEFsZXggS29nYW4gd3JvdGU6Cj4+IEhpLCBQ
YXVsLgo+Pgo+PiBUaGFua3MgZm9yIHJ1bm5pbmcgdGhvc2UgZXhwZXJpbWVudHMhCj4+Cj4+PiBP
biBKYW4gMjQsIDIwMjAsIGF0IDU6MjQgUE0sIFBhdWwgRS4gTWNLZW5uZXkgPHBhdWxtY2tAa2Vy
bmVsLm9yZz4gd3JvdGU6Cj4+Pgo+Pj4gT24gVHVlLCBKYW4gMTQsIDIwMjAgYXQgMTA6NTk6MTVQ
TSAtMDUwMCwgQWxleCBLb2dhbiB3cm90ZToKPj4+PiBNaW5vciBjaGFuZ2VzIGZyb20gdjggYmFz
ZWQgb24gZmVlZGJhY2sgZnJvbSBMb25nbWFuOgo+Pj4+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+Pj4KPj4+PiAtIEFkZCBfX2luaXQgdG8g
Y25hX2NvbmZpZ3VyZV9zcGluX2xvY2tfc2xvd3BhdGgoKS4KPj4+Pgo+Pj4+IC0gRml4IHRoZSBj
b21tZW50IGZvciBjbmFfc2Nhbl9tYWluX3F1ZXVlKCkuCj4+Pj4KPj4+PiAtIENoYW5nZSB0aGUg
dHlwZSBvZiBpbnRyYV9ub2RlX2hhbmRvZmZfdGhyZXNob2xkIHRvIHVuc2lnbmVkIGludC4KPj4+
Pgo+Pj4+Cj4+Pj4gU3VtbWFyeQo+Pj4+IC0tLS0tLS0KPj4+Pgo+Pj4+IExvY2sgdGhyb3VnaHB1
dCBjYW4gYmUgaW5jcmVhc2VkIGJ5IGhhbmRpbmcgYSBsb2NrIHRvIGEgd2FpdGVyIG9uIHRoZQo+
Pj4+IHNhbWUgTlVNQSBub2RlIGFzIHRoZSBsb2NrIGhvbGRlciwgcHJvdmlkZWQgY2FyZSBpcyB0
YWtlbiB0byBhdm9pZAo+Pj4+IHN0YXJ2YXRpb24gb2Ygd2FpdGVycyBvbiBvdGhlciBOVU1BIG5v
ZGVzLiBUaGlzIHBhdGNoIGludHJvZHVjZXMgQ05BCj4+Pj4gKGNvbXBhY3QgTlVNQS1hd2FyZSBs
b2NrKSBhcyB0aGUgc2xvdyBwYXRoIGZvciBxc3BpbmxvY2suIEl0IGlzCj4+Pj4gZW5hYmxlZCB0
aHJvdWdoIGEgY29uZmlndXJhdGlvbiBvcHRpb24gKE5VTUFfQVdBUkVfU1BJTkxPQ0tTKS4KPj4+
Pgo+Pj4+IENOQSBpcyBhIE5VTUEtYXdhcmUgdmVyc2lvbiBvZiB0aGUgTUNTIGxvY2suIFNwaW5u
aW5nIHRocmVhZHMgYXJlCj4+Pj4gb3JnYW5pemVkIGluIHR3byBxdWV1ZXMsIGEgbWFpbiBxdWV1
ZSBmb3IgdGhyZWFkcyBydW5uaW5nIG9uIHRoZSBzYW1lCj4+Pj4gbm9kZSBhcyB0aGUgY3VycmVu
dCBsb2NrIGhvbGRlciwgYW5kIGEgc2Vjb25kYXJ5IHF1ZXVlIGZvciB0aHJlYWRzCj4+Pj4gcnVu
bmluZyBvbiBvdGhlciBub2Rlcy4gVGhyZWFkcyBzdG9yZSB0aGUgSUQgb2YgdGhlIG5vZGUgb24g
d2hpY2gKPj4+PiB0aGV5IGFyZSBydW5uaW5nIGluIHRoZWlyIHF1ZXVlIG5vZGVzLiBBZnRlciBh
Y3F1aXJpbmcgdGhlIE1DUyBsb2NrIGFuZAo+Pj4+IGJlZm9yZSBhY3F1aXJpbmcgdGhlIHNwaW5s
b2NrLCB0aGUgbG9jayBob2xkZXIgc2NhbnMgdGhlIG1haW4gcXVldWUKPj4+PiBsb29raW5nIGZv
ciBhIHRocmVhZCBydW5uaW5nIG9uIHRoZSBzYW1lIG5vZGUgKHByZS1zY2FuKS4gSWYgZm91bmQg
KGNhbGwKPj4+PiBpdCB0aHJlYWQgVCksIGFsbCB0aHJlYWRzIGluIHRoZSBtYWluIHF1ZXVlIGJl
dHdlZW4gdGhlIGN1cnJlbnQgbG9jawo+Pj4+IGhvbGRlciBhbmQgVCBhcmUgbW92ZWQgdG8gdGhl
IGVuZCBvZiB0aGUgc2Vjb25kYXJ5IHF1ZXVlLiAgSWYgc3VjaCBUCj4+Pj4gaXMgbm90IGZvdW5k
LCB3ZSBtYWtlIGFub3RoZXIgc2NhbiBvZiB0aGUgbWFpbiBxdWV1ZSBhZnRlciBhY3F1aXJpbmcg
Cj4+Pj4gdGhlIHNwaW5sb2NrIHdoZW4gdW5sb2NraW5nIHRoZSBNQ1MgbG9jayAocG9zdC1zY2Fu
KSwgc3RhcnRpbmcgYXQgdGhlCj4+Pj4gbm9kZSB3aGVyZSBwcmUtc2NhbiBzdG9wcGVkLiBJZiBi
b3RoIHNjYW5zIGZhaWwgdG8gZmluZCBzdWNoIFQsIHRoZQo+Pj4+IE1DUyBsb2NrIGlzIHBhc3Nl
ZCB0byB0aGUgZmlyc3QgdGhyZWFkIGluIHRoZSBzZWNvbmRhcnkgcXVldWUuIElmIHRoZQo+Pj4+
IHNlY29uZGFyeSBxdWV1ZSBpcyBlbXB0eSwgdGhlIE1DUyBsb2NrIGlzIHBhc3NlZCB0byB0aGUg
bmV4dCB0aHJlYWQgaW4gdGhlCj4+Pj4gbWFpbiBxdWV1ZS4gVG8gYXZvaWQgc3RhcnZhdGlvbiBv
ZiB0aHJlYWRzIGluIHRoZSBzZWNvbmRhcnkgcXVldWUsIHRob3NlCj4+Pj4gdGhyZWFkcyBhcmUg
bW92ZWQgYmFjayB0byB0aGUgaGVhZCBvZiB0aGUgbWFpbiBxdWV1ZSBhZnRlciBhIGNlcnRhaW4K
Pj4+PiBudW1iZXIgb2YgaW50cmEtbm9kZSBsb2NrIGhhbmQtb2Zmcy4KPj4+Pgo+Pj4+IE1vcmUg
ZGV0YWlscyBhcmUgYXZhaWxhYmxlIGF0IGh0dHBzOi8vdXJsZGVmZW5zZS5wcm9vZnBvaW50LmNv
bS92Mi91cmw/dT1odHRwcy0zQV9fYXJ4aXYub3JnX2Fic18xODEwLjA1NjAwJmQ9RHdJQkFnJmM9
Um9QMVl1bUNYQ2dhV0h2bFpZUjhQWmg4QnY3cUlyTVVCNjVlYXBJX0puRSZyPUh2aGszRjRvbWRD
ay1HRTFQVE9tM0tuMEE3QXBXT1oyYVpMVHVWeEZLNGsmbT0xS1VHR1pZVEhuUTI1ZmdSRnBwZE52
cEpmSTByT09fVXNkdTE4UkR1XzE0JnM9RjEybmhIdXR3blBOdF9UUTJFTEVSMERodHNIbEVJOUVp
VzFuRFBobTUtWSZlPSA8aHR0cHM6Ly91cmxkZWZlbnNlLnByb29mcG9pbnQuY29tL3YyL3VybD91
PWh0dHBzLTNBX19hcnhpdi5vcmdfYWJzXzE4MTAuMDU2MDAmZD1Ed0lCQWcmYz1Sb1AxWXVtQ1hD
Z2FXSHZsWllSOFBaaDhCdjdxSXJNVUI2NWVhcElfSm5FJnI9SHZoazNGNG9tZENrLUdFMVBUT20z
S24wQTdBcFdPWjJhWkxUdVZ4Rks0ayZtPTFLVUdHWllUSG5RMjVmZ1JGcHBkTnZwSmZJMHJPT19V
c2R1MThSRHVfMTQmcz1GMTJuaEh1dHduUE50X1RRMkVMRVIwRGh0c0hsRUk5RWlXMW5EUGhtNS1Z
JmU9PiAuCj4+Pj4KPj4+PiBUaGUgc2VyaWVzIGFwcGxpZXMgb24gdG9wIG9mIHY1LjUuMC1yYzYs
IGNvbW1pdCBiM2E5ODdiMDI2Lgo+Pj4+IFBlcmZvcm1hbmNlIG51bWJlcnMgYXJlIGF2YWlsYWJs
ZSBpbiBwcmV2aW91cyByZXZpc2lvbnMKPj4+PiBvZiB0aGUgc2VyaWVzLgo+Pj4+Cj4+Pj4gRnVy
dGhlciBjb21tZW50cyBhcmUgd2VsY29tZSBhbmQgYXBwcmVjaWF0ZWQuCj4+PiBJIHJhbiB0aGlz
IG9uIGEgbGFyZ2Ugc3lzdGVtIHdpdGggYSB2ZXJzaW9uIG9mIGxvY2t0b3J0dXJlIHRoYXQgd2Fz
Cj4+PiBtb2RpZmllZCB0byBwcmludCBvdXQgdGhlIG1heGltdW0gYW5kIG1pbmltdW0gcGVyLUNQ
VSBsb2NrLWFjcXVpc2l0aW9uCj4+PiBjb3VudHMsIGFuZCB3aXRoIENQVSBob3RwbHVnIGRpc2Fi
bGVkLiAgSSBhbHNvIG1vZGlmaWVkIHRoZSBMT0NLMDEgYW5kCj4+PiBMT0NLMDQgc2NlbmFyaW9z
IHRvIHVzZSAyMjAgaGFyZHdhcmUgdGhyZWFkcy4KPj4+Cj4+PiBIZXJlIGlzIHdoYXQgdGhlIHRl
c3QgZW5kZWQgdXAgd2l0aCBhdCB0aGUgZW5kIG9mIGEgb25lLWhvdXIgcnVuOgo+Pj4KPj4+IExP
Q0swMSAoZXhjbHVzaXZlKToKPj4+IFdyaXRlczogIFRvdGFsOiAxMjQxMTA3MzMzICBNYXgvTWlu
OiA5MjA2OTYyLzYwOTAyID8/PyAgRmFpbDogMAo+Pj4KPj4+IExPQ0swNCAocndsb2NrKToKPj4+
IFdyaXRlczogIFRvdGFsOiAyMzI5OTE5NjMgIE1heC9NaW46IDI2MzE1NzQvNzQ1ODIgPz8/ICBG
YWlsOiAwCj4+PiBSZWFkcyA6ICBUb3RhbDogMjE2OTM1Mzg2ICBNYXgvTWluOiAyNzM1OTM5LzI4
NjY1ID8/PyAgRmFpbDogMAo+Pj4KPj4+IFRoZSAiPz8/IiBzdHJpbmdzIGFyZSBwcmludGVkIGJl
Y2F1c2UgdGhlIHJhdGlvIG9mIG1heGltdW0gdG8gbWluaW11bSBleGNlZWRzCj4+PiBhIGZhY3Rv
ciBvZiB0d28uCj4+IElzIHRoaXMgd2hhdCB5b3UgZXhwZWN0IC8gaGF2ZSBzZWVuIHdpdGggdGhl
IGV4aXN0aW5nIHFzcGlubG9jaz8KPj4KPj4+IEkgYWxzbyByYW4gMzAtbWludXRlIHJ1bnMgb24g
bXkgbGFwdG9wLCB3aGljaCBoYXMgMTIgaGFyZHdhcmUgdGhyZWFkczoKPj4+Cj4+PiBMT0NLMDEg
KGV4Y2x1c2l2ZSk6Cj4+PiBXcml0ZXM6ICBUb3RhbDogMzk5MjA3Mjc4MiAgTWF4L01pbjogMjU5
MzY4NzgyLzk3MjMxOTYxID8/PyAgRmFpbDogMAo+Pj4KPj4+IExPQ0swNCAocndsb2NrKToKPj4+
IFdyaXRlczogIFRvdGFsOiAxMzEwNjM4OTIgIE1heC9NaW46IDEzMTM2MjA2LzU4NzYxNTcgPz8/
ICBGYWlsOiAwCj4+PiBSZWFkcyA6ICBUb3RhbDogMTQ0ODc2ODAxICBNYXgvTWluOiAxOTk5OTUz
NS80ODczNDQyID8/PyAgRmFpbDogMAo+PiBJIGFzc3VtZSB0aGUgc3lzdGVtIGFib3ZlIGlzIG11
bHRpLXNvY2tldCwgYnV0IHlvdXIgbGFwdG9wIGlzIHByb2JhYmx5IG5vdD8KPj4KPj4gSWYgdGhh
dOKAmXMgdGhlIGNhc2UsIENOQSBzaG91bGQgbm90IGJlIGVuYWJsZWQgb24geW91ciBsYXB0b3Ag
KGdyZXAKPj4ga2VybmVsIGxvZ3MgZm9yICJFbmFibGluZyBDTkEgc3BpbmxvY2vigJ0gdG8gYmUg
c3VyZSkuCj4+Cj4+PiBUaGVzZSBhbHNvIGV4Y2VlZCB0aGUgZmFjdG9yLW9mLXR3byBjdXRvZmYs
IGJ1dCBub3QgYXMgZHJhbWF0aWNhbGx5Lgo+Pj4gVGhlIHJlYWRlcnMgZm9yIHRoZSByZWFkZXIt
d3JpdGVyIGxvY2sgZmFyZWQgd29yc3QsIHdpdGggYSA0LXRvLTEgcmF0aW8uCj4+Pgo+Pj4gVGhl
c2UgdGVzdHMgZGlkIHJ1biB3aXRoaW4gZ3Vlc3QgT1Nlcy4KPj4gU28gSSByZWFsbHkgd29uZGVy
IGlmIENOQSB3YXMgZW5hYmxlZCBoZXJlLCBvciB3aGV0aGVyIHRoaXMgaXMgd2hhdCB5b3UgZ2V0
Cj4+IHdpdGggcGFyYXZpcnQgcXNwaW5sb2NrLgo+Pgo+Pj4gIElzIHRoYXQgY29uZmlndXJhdGlv
biBvdXQgb2YKPj4+IHNjb3BlIGZvciB0aGlzIGxvY2tpbmcgYWxnb3JpdGhtPyAgSW4gYWRkaXRp
b24gKGFzIG1pZ2h0IHdlbGwgYWxzbyBoYXZlCj4+PiBiZWVuIHRoZSBjYXNlIGZvciB0aGUgbG9j
a3RvcnR1cmUgcnVucyBpbiB5b3VyIHBhcGVyKSwgdGhlc2UgdGVzdHMgcnVuCj4+PiBhIHBhaXIg
b2Ygc3RyZXNzLXRlc3QgdGFza3MgZm9yIGVhY2ggaGFyZHdhcmUgdGhyZWFkLgo+Pj4KPj4+IElz
IHRoaXMgZXhwZWN0ZWQgYmVoYXZpb3I/Cj4+IFRoZSByZXN1bHRzIGRvIGFwcGVhciBza2V3ZWQg
YSBiaXQgdG9vIG11Y2gsIGJ1dCBpdCB3b3VsZCBiZSBoZWxwZnVsIHRvIGtub3cKPj4gd2hhdCBx
c3BpbmxvY2sgd2UgYXJlIGxvb2tpbmcgYXQsIGFuZCBob3cgdGhleSBjb21wYXJlIHRvIHRoZSBl
eGlzdGluZyBxc3BpbmxvY2ssCj4+IGluIGNhc2UgaXQgaXMgaW5kZWVkIENOQS4KPiBZb3UgY2Fs
bGVkIGl0ISAgSSB3aWxsIHBsYXkgd2l0aCBRRU1VJ3MgLW51bWEgYXJndW1lbnQgdG8gc2VlIGlm
IEkgY2FuIGdldAo+IENOQSB0byBydW4gZm9yIG1lLiAgUGxlYXNlIGFjY2VwdCBteSBhcG9sb2dp
ZXMgZm9yIHRoZSBmYWxzZSBhbGFybS4KPgo+IAkJCQkJCQlUaGFueCwgUGF1bAo+CkNOQSBpcyBu
b3QgY3VycmVudGx5IHN1cHBvcnRlZCBpbiBhIFZNIGd1ZXN0IHNpbXBseSBiZWNhdXNlIHRoZSBu
dW1hCmluZm9ybWF0aW9uIGlzIG5vdCByZWxpYWJsZS4gWW91IHdpbGwgaGF2ZSB0byBydW4gaXQg
b24gYmFyZW1ldGFsIHRvCnRlc3QgaXQuIFNvcnJ5IGZvciB0aGF0LgoKUmVnYXJkcywKTG9uZ21h
bgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
